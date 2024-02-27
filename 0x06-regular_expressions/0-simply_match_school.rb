#!/usr/bin/env ruby

require 'oniguruma'

regex_pattern = /School/

input_argument = ARGV[0]

if input_argument =~ regex_pattern
  puts "The input '#{input_argument}' matches the term 'School'."
else
  puts "The input '#{input_argument}' does not match the term 'School'."
end
