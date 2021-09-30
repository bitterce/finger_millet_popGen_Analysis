#!/usr/bin/env ruby
# encoding: utf-8
# Version = '20200706-095531'

unless search_dir=ARGV[0]
  puts <<-eos
  usage:
   #{File.basename(__FILE__)} [search_dir] (-s search_sid)
  eos
  exit
end

search_sid = if i = ARGV.index("-s")
               ARGV[i+1]
             end

require 'zlib'

sid2dir = {}
Dir[File.join(search_dir, "**/*.filtered.vcf.gz")].sort.each do |file|
  dir = File.dirname(file)
  Zlib::GzipReader.open(file) do |e|
    e.each do |line|
      unless line =~ /^#/
        sid = line.split.first
        sid2dir[sid] = dir
        break
      end
    end
  end
end

if sid = search_sid
  puts [sid, sid2dir[sid]].join("\t")
else
  sid2dir.keys.sort.each do |sid|
    puts [sid, sid2dir[sid]].join("\t")
  end
end

