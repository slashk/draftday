#!/usr/bin/env ruby
#
#  Created by Ken Pepple on 2007-04-10.
#  Copyright (c) 2007. All rights reserved.

my_file = 'depth.csv'  

f=File.new(my_file)
f.readlines.each do |line|
  b = Array.new  
  b = line.split(',')
  #puts b[0] + " :  " + b[1]
  puts "UPDATE players SET depth = '" + b[1].chomp! + "' WHERE yahoo_ref = " + b[0] + ";"
end