#! /usr/bin/env ruby

require 'set'
freq = 0

data = File.read('./data.txt')

changes = data.split("\n")

seen_freq = Set.new

i = 0
while true do
  i += 1
  puts "Round #{i}: nr freq: #{seen_freq.size}"
  changes.each do |delta|
    freq += delta.to_i
    if seen_freq.include?(freq)
      puts freq
      exit
    end
    seen_freq.add(freq)
  end
end


