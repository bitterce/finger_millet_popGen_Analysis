#!/usr/bin/env ruby
# encoding: utf-8
# Version = '20200513-102239'

selected_50 = {}
under_50 = []
candidate_50 = {}
Dir["/srv/gstore/projects/p1634/GATKv4DNAHaplotypeCaller_Reseq_low*"].sort.each do |dir|
  dir_base = File.basename(dir)
  count_vcf = Dir[File.join(dir, "*.g.vcf.gz")].to_a.length
  date = dir_base.match(/(2020-\d+-\d+)/).to_a.first
  key = dir_base.match(/\d+_\d+_on_[A|B]/).to_a.first
  candidate_50[key] ||= []
  if count_vcf >= 50
     if selected_50[key]
       if selected_50[key].first < date
         candidate_50[key] << selected_50[key]
         selected_50[key] = [date, [dir_base, count_vcf].join("\t")]
       else
         candidate_50[key] << [date, [dir_base, count_vcf].join("\t")]
       end
     else
      selected_50[key] = [date, [dir_base, count_vcf].join("\t")]
     end
  else
    under_50 << [dir_base, count_vcf].join("\t")
  end
end

puts ">= 50 (*.g.vcf.gz, latest)"
selected_50.select{|key, xxx| key =~ /_A/}.each do |key, date_line|
  date, line = date_line
  puts line
end
selected_50.select{|key, xxx| key =~ /_B/}.each do |key, date_line|
  date, line = date_line
  puts line
end


puts
puts ">= 50 (*.g.vcf.gz, candidate)"
candidate_50.select{|key, xxx| key =~ /_A/}.each do |key, date_lines|
  date_lines.each do |date_line|
    date, line = date_line
    puts line
  end
end
candidate_50.select{|key, xxx| key =~ /_B/}.each do |key, date_lines|
  date_lines.each do |date_line|
    date, line = date_line
    puts line
  end
end

puts
puts "< 50 (*.g.vcf.gz)"
puts under_50.join("\n")
puts


###
require "fileutils"
require "csv"
OUT_DIR = "dataset_tsv"
FileUtils.mkdir_p OUT_DIR
warn "# mkdir -p #{OUT_DIR}"
headers_A = nil
gatk_dataset_A = []
selected_50.select{|key, xxx| key =~ /_A/}.each do |key, date_line|
  date, line = date_line
  dir_base, count = line.split
  path = File.join("/srv/gstore/projects/p1634/", dir_base)
  path = File.join(path, "dataset.tsv")
  dataset_tsv_name = [dir_base, "dataset.tsv"].join("_")
  dataset_tsv_name = File.join(OUT_DIR, dataset_tsv_name)
  warn "# cp #{path} #{dataset_tsv_name}"
  FileUtils.cp(path, dataset_tsv_name)

  CSV.readlines(dataset_tsv_name, headers: true, col_sep: "\t").each do |e|
    unless headers_A
      headers_A = e.headers
    end
    gatk_dataset_A << e
  end
end

headers_B = nil
gatk_dataset_B = []
selected_50.select{|key, xxx| key =~ /_B/}.each do |key, date_line|
  date, line = date_line
  dir_base, count = line.split
  path = File.join("/srv/gstore/projects/p1634/", dir_base)
  path = File.join(path, "dataset.tsv")
  dataset_tsv_name = [dir_base, "dataset.tsv"].join("_")
  dataset_tsv_name = File.join(OUT_DIR, dataset_tsv_name)
  warn "# cp #{path} #{dataset_tsv_name}"
  FileUtils.cp(path, dataset_tsv_name)

  CSV.readlines(dataset_tsv_name, headers: true, col_sep: "\t").each do |e|
    unless headers_B
      headers_B = e.headers
    end
    gatk_dataset_B << e
  end
end


# Make one huge dataset
puts
csv = CSV.generate("", headers: headers_A, write_headers: true, col_sep: "\t") do |out|
  gatk_dataset_A.sort_by{|e| e["Name"].to_i}.each do |e|
    out << e.fields
  end
end
File.write("GATK_A_dataset.tsv", csv)
warn "# GATK_A_dataset.tsv generated"

csv = CSV.generate("", headers: headers_B, write_headers: true, col_sep: "\t") do |out|
  gatk_dataset_B.sort_by{|e| e["Name"].to_i}.each do |e|
    out << e.fields
  end
end
File.write("GATK_B_dataset.tsv", csv)
warn "# GATK_B_dataset.tsv generated"




