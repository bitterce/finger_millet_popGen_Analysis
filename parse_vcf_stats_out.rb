#!/usr/bin/env ruby
# encoding: utf-8
# Version = '20200119-211047'

unless vcf_stats_out_dir=ARGV[0]
  puts <<-eos
  usage:
   #{File.basename(__FILE__)} [vcf_stats_out_dir]
  eos
  exit
end

sampleid2snps = {}
Dir[File.join(vcf_stats_out_dir, "*.snps")].sort.each do |file_snps|
  sample_id = File.basename(file_snps).split('.').first
  number_of_snps = 0
  File.readlines(file_snps).each do |line|
    # 993841  samples/301
    if line =~ /samples.#{sample_id}/
      number_of_snps = line.split.first
    end
  end
  sampleid2snps[sample_id] = number_of_snps
end

headers = ["sample_id", "number_of_snps"]
puts headers.join("\t")
sampleid2snps.each do |sample_id, number_of_snps|
  puts [sample_id, number_of_snps].join("\t")
end

