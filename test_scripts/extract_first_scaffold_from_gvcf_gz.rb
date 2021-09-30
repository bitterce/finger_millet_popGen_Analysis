#!/usr/bin/env ruby
# encoding: utf-8
# Version = '20200605-155147'

unless g_vcf_gz_dir=ARGV[0] and out_dir=ARGV[1]
  puts <<-eos
  usage:
   #{File.basename(__FILE__)} [g.vcf.gz dir] [out_dir]
  eos
  exit
end

require 'fileutils'
FileUtils.mkdir_p out_dir
warn "# #{out_dir} generated"

require 'zlib'

Dir[File.join(g_vcf_gz_dir, "*.g.vcf.gz")].to_a.sort.each do |g_vcf_gz|
  headers = []
  snps = []
  sid = nil
  warn "# #{g_vcf_gz} loading..."
  Zlib::GzipReader.open(g_vcf_gz) do |e|
    while line=e.gets
      if line =~ /^#/
        headers << line
      else
        sid_, *others = line.split
        unless sid
          sid = sid_
        end
        if sid == sid_
          snps << line
        else
          break
        end
      end
    end
  end

  out_file = File.join(out_dir, File.basename(g_vcf_gz))
  warn "# #{out_file} writing..."
  Zlib::GzipWriter.open(out_file) do |gz|
    gz.print headers.join
    gz.print snps.join
  end

  warn "# #{out_file} generaged"
end
