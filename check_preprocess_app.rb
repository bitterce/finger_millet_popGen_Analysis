#!/usr/bin/env ruby
# encoding: utf-8
# Version = '20200330-134237'

unless gstore_dir=ARGV[0]
  puts <<-eos
  usage:
   #{File.basename(__FILE__)} [gstore dir]
  eos
  exit
end

Dir[File.join(gstore_dir, "BWA_Reseq_low_*/scripts/*.sh")].each do |file|
  File.readlines(file).select{|line| line =~ /module add/}.each do |line|
    dir = file.split('/')[5]
    if line =~ /Trimmomatic/
      puts "Trimmomatic: #{dir}, #{File.basename(file)}"
    elsif line =~ /fastp/
      puts "Fastp: #{dir}, #{File.basename(file)}"
    else
      puts "WWW"
      print line
      raise
    end
  end
end

