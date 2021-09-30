#!/usr/bin/env ruby
# encoding: utf-8
# Version = '20200119-144953'

unless bamstats_dir=ARGV[0]
  puts <<-eos
  usage:
   #{File.basename(__FILE__)} [bamstats_dir before EAGLERC] ([bamstats_dir after EAGLERC])

  note:
   * the sample ID(s) should be same in the BamStats result before/after EAGLERC
  eos
  exit
end

bamstats_dir_after_eaglerc = ARGV[1]

header = ["sample_id", "number_of_reads_before_eaglerc", "number_of_mapped_reads_before_eaglerc", "percentage_before_eaglerc", "number_of_reads_after_eaglerc", "percentage_after_eaglerc"]
puts header.join("\t")

sampleid2stats = {}
# before EAGLERC
Dir[File.join(bamstats_dir, "*/genome_results.txt")].sort.each do |genome_results_txt|
  # number of reads = 74,539,160
  # number of mapped reads = 69,314,946 (92.99%)
  sample_id = File.dirname(genome_results_txt).split("/").last
  number_of_reads = nil
  number_of_mapped_reads = nil
  percentage = nil
  number_of_mapped_reads_percentage = nil
  File.readlines(genome_results_txt).each do |line|
    if line =~ /number of reads = (.+)/
      number_of_reads = $1
      number_of_reads = number_of_reads.gsub(/,/, '').to_i
    elsif line =~ /number of mapped reads = (.+)/
      number_of_mapped_reads_percentage = $1
      number_of_mapped_reads, percentage_ = number_of_mapped_reads_percentage.split
      percentage = percentage_.gsub('(', '').gsub(')', '').gsub('%', '')
      number_of_mapped_reads.gsub!(',', '')
    end
  end
  sampleid2stats[sample_id] ||= []
  sampleid2stats[sample_id].concat([number_of_reads, number_of_mapped_reads, percentage])
end

# after EAGLERC
if bamstats_dir_after_eaglerc
  Dir[File.join(bamstats_dir_after_eaglerc, "*/genome_results.txt")].sort.each do |genome_results_txt|
    # number of reads = 74,539,160
    # number of mapped reads = 69,314,946 (92.99%)
    sample_id = File.dirname(genome_results_txt).split("/").last
    number_of_reads = nil
    number_of_mapped_reads = nil
    percentage = nil
    number_of_mapped_reads_percentage = nil
    File.readlines(genome_results_txt).each do |line|
      if line =~ /number of reads = (.+)/
        number_of_reads = $1
        number_of_reads = number_of_reads.gsub(/,/, '').to_i
      elsif line =~ /number of mapped reads = (.+)/
        number_of_mapped_reads_percentage = $1
        number_of_mapped_reads, percentage_ = number_of_mapped_reads_percentage.split
        percentage = percentage_.gsub('(', '').gsub(')', '').gsub('%', '')
        number_of_mapped_reads.gsub!(',', '')
      end
    end
    unless sampleid2stats[sample_id]
      raise "Maybe the Sample ID is not consistent before/after EAGLERC" 
    end
    sampleid2stats[sample_id] << number_of_reads
  end

  # calc real mapped percentage after EAGLERC
  sampleid2stats.keys.each do |sample_id|
    number_of_reads_before_eaglerc, number_of_mapped_reads, percentage, number_of_reads_after_eaglerc = sampleid2stats[sample_id]
    percentage_after_eaglerc = "%.2f" % (number_of_reads_after_eaglerc.to_f / number_of_reads_before_eaglerc * 100)
    sampleid2stats[sample_id] << percentage_after_eaglerc
  end
end

# out
sampleid2stats.each do |sample_id, row|
  puts [sample_id].concat(row).join("\t")
end

