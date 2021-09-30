#!/usr/bin/env ruby
# encoding: utf-8
# Version = '20200611-143016'

unless sample_group_txt=ARGV[0] and plink1_pca_eigenvec=ARGV[1]
  puts <<-eos
  usage:
   #{File.basename(__FILE__)} [sample_group.txt] [plnk1_pca.eigenvec] > new.eigenvec
  eos
  exit
end

require 'csv'
id2origins = {}
CSV.foreach(sample_group_txt, headers: true, col_sep: "\t") do |e|
  id = e["No"]
  origin = e["Source"]
  if origin
    id2origins[id] = origin
  else
    id2origins[id] = "NA"
  end
end

File.readlines(plink1_pca_eigenvec).each do |line|
  id1, id2, *others = line.chomp.split
  if origin = id2origins[id2]
    row = [id1, origin.split.join].concat(others)
    puts row.join(" ")
  else
    raise
  end
end

