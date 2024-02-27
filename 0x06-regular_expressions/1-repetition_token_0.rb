#!/usr/bin/env ruby

require 'oniguruma'

regex_pattern = /School/i

input_argument = ARGV[0]

if input_argument =~ regex_pattern
  puts "The input '#{input_argument}' contains the term 'School'."
else
  puts "The input '#{input_argument}' does not contain the term 'School'."
end
