#!/bin/bash
#$ -hold_jid 517142
set -e
set -o pipefail
umask 0002

#### SET THE STAGE
SCRATCH_DIR=/scratch/GATKv4JointGenoTypes_B_only_Ecor_snp_indel_filtered_by_PR202_2019-08-18--17-03-24_GATKv4_Genotyping_temp$$
GSTORE_DIR=/srv/gstore/projects
INPUT_DATASET=/srv/gstore/projects/p1634/GATKv4JointGenoTypes_B_only_Ecor_snp_indel_filtered_by_PR202_2019-08-18--17-03-24/input_dataset.tsv
echo "Job runs on `hostname`"
echo "at $SCRATCH_DIR"
mkdir $SCRATCH_DIR || exit 1
cd $SCRATCH_DIR || exit 1
source /usr/local/ngseq/etc/lmod_profile
module add Dev/Ruby/2.4.3

#### NOW THE ACTUAL JOBS STARTS
cat > filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb <<-EOF
#!/usr/bin/env ruby
# encoding: utf-8
# Version = '20190812-110125'

unless target_snps_vcf_gz=ARGV[0] and false_snps_vcf_gz=ARGV[1]
  puts <<-eos
  usage:
   #{File.basename(__FILE__)} [target.vcf.gz] [false_positive.vcf.gz] (-o [new_filtered.vcf.gz]) (2> log.txt)
  note:
   * without -o option, flat vcf file will be printed in stdout
  eos
  exit
end

out_file = if idx = ARGV.index("-o")
             ARGV[idx+1]
           end

require 'zlib'

false_snps_indels = {}
false_snps = 0
false_indels = 0
Zlib::GzipReader.open(false_snps_vcf_gz) do |io|
  io.each do |line|
    # CHROM  POSID REF ALT QUAL  FILTER  INFO  FORMAT  ref_bam_A/Ecor_PR2021.ref
    # ["sa0002", "23965969", ".", "T", "C", "175.77", "PASS", ".", "GT:AD:DP:GQ:PGT:PID:PL", "0/1:2,5:7:69:0|1:23965969_T_C:204,0,69"]
    unless line =~ /^#/
      sid, pos, dot, ref, alt, qual, filter, *others = line.split
      key = [sid, pos].join("_")
      false_snps_indels[key] = alt.split(",")
      if alt.split(",").map{|a| a.length}.max > 1 or ref.split(",").map{|r| r.length}.max > 1
        false_indels += 1
      else
        false_snps += 1
      end
    end
  end
end

total_snps = 0
false_positive_snps = 0
total_indels = 0
false_positive_indels = 0

output =->(out) do
  Zlib::GzipReader.open(target_snps_vcf_gz) do |io|
    io.each do |line|
      unless line =~ /^#/
        sid, pos, dot, ref, alt, qual, filter, *others = line.split
        flag_indel = false
        if filter == "PASS"
          if alt.split(",").map{|a| a.length}.max > 1 or ref.split(",").map{|r| r.length}.max > 1
            total_indels += 1
            flag_indel = true
          else
            total_snps += 1
          end
          key = [sid, pos].join("_")
          #unless (alt.split(",") & false_snps[key].to_a).empty?
          if (alt.split(",") - false_snps_indels[key].to_a).empty?
            if flag_indel
              false_positive_indels += 1
            else
              false_positive_snps += 1
            end
          else
            out.print line
          end
        end
      else
        out.print line
      end
    end
  end
end

if out_file and out_file =~ /.gz$/
  Zlib::GzipWriter.open(out_file, &output)
else
  output.($stdout)
end

total_snps_indels = total_snps + total_indels
warn
warn "# target vcf:                         #{target_snps_vcf_gz}"
warn "# filter vcf:                         #{false_snps_vcf_gz}"
warn "# total_snps_indels (target):         #{total_snps_indels}"
warn "#   total_snps (target):              #{total_snps}"
warn "#   total_indels (target):            #{total_indels}"
warn "# false_snps_indels (filter):         #{false_snps_indels.keys.length}"
warn "#   false_snps (filter):              #{false_snps}"
warn "#   false_indels (filter):            #{false_indels}"
warn

false_positives = false_positive_snps + false_positive_indels
true_positives = total_snps_indels-false_positives
warn "# false_positives (filtered):         #{false_positives}"
warn "#   false_positive_snps (filtered):   #{false_positive_snps}"
warn "#   false_positive_indels (filtered): #{false_positive_indels}"
warn "# true_positives:                     #{true_positives}"
warn "#   = total_snps_indels - false_positives"
warn "#   = #{total_snps_indels} - #{false_positives} = #{total_snps_indels-false_positives}"
warn

precision = true_positives.to_f/(true_positives+false_positives) # PPV (positive predictive value)
fdr = false_positives.to_f/(true_positives+false_positives)      # FDR (false discovery rate)
warn "# precision (TP/total):             #{"%.2f" % (true_positives.to_f/total_snps_indels)}"
warn "# precision (TP/total):             #{"%.2f" % (precision)} (validation)"
warn "# FDR (FP/total):                   #{"%.2f" % (fdr)}"  
warn "# Ref: https://en.wikipedia.org/wiki/Confusion_matrix"
EOF
ruby filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb /srv/gstore/projects/p1634/GATKv4JointGenoTypes_B_only_Ecor_snp_indel_2019-08-15--16-28-18/GATKv4_Genotyping.filtered.vcf.gz /srv/gstore/projects/p1634/GATKv4JointGenoTypes_B_only_PR202_snp_indel_2019-08-11--08-49-46/GATKv4_Genotyping.filtered.vcf.gz -o GATKv4_Genotyping.filtered_by_reference_vcf.vcf.gz 2> filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.log


#### JOB IS DONE WE PUT THINGS IN PLACE AND CLEAN AUP
g-req -w copy GATKv4_Genotyping.filtered_by_reference_vcf.vcf.gz /srv/gstore/projects/p1634/GATKv4JointGenoTypes_B_only_Ecor_snp_indel_filtered_by_PR202_2019-08-18--17-03-24
g-req -w copy filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.rb /srv/gstore/projects/p1634/GATKv4JointGenoTypes_B_only_Ecor_snp_indel_filtered_by_PR202_2019-08-18--17-03-24
g-req -w copy filter_out_snps_indels_by_reference_vcf.GATKv4_Genotyping.log /srv/gstore/projects/p1634/GATKv4JointGenoTypes_B_only_Ecor_snp_indel_filtered_by_PR202_2019-08-18--17-03-24
cd /scratch
rm -rf /scratch/GATKv4JointGenoTypes_B_only_Ecor_snp_indel_filtered_by_PR202_2019-08-18--17-03-24_GATKv4_Genotyping_temp$$ || exit 1

