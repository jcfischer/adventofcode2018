#! /usr/bin/env ruby

freq = 0

File.open("./data.txt", "r") do |f|
  f.each_line do |delta|
    freq += delta.to_i
  end
end

puts freq
