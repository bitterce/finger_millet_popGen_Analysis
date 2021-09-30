#!/usr/bin/env ruby
# encoding: utf-8
# Version = '20200619-085853'

require 'parallel'
require 'ruby-progressbar'

unless batch_file=ARGV[0] and threads=ARGV[1]
  puts "Usage:\n #{File.basename(__FILE__)} [batch.sh] [threads] ([out.dat])"
  exit
end
threads = threads.to_i
out_file = ARGV[2]||"out.dat"

commands = File.readlines(batch_file).to_a.select{|line| !line.chomp.empty? and line !~ /^#/}
progress = ProgressBar.create(title: "Progress", total: commands.length, format: '%a %B %p%% %t', output: $stderr)
result = Parallel.map(commands, in_threads: threads, finish: -> (item, i, res){ progress.increment }) do |command|
  `#{command}`
end
open(out_file,"w") do |out|
  out.print result.join
end
