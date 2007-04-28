#!/usr/bin/env ruby
#
#  Created by Ken Pepple on 2007-04-14.
#  Copyright (c) 2007. All rights reserved.

  
  def grab_pages (url)
    # this method just grabs the pages from the Y! website and returns the page as a variable
    require 'net/http'
    require 'uri'
    src = Net::HTTP.get(URI.parse('url'))
  end
  
  def read_pages (file)
    # this just grabs a local page and loads it into a variable
    f = File::read(file)
    #puts f
    return f
  end
  
  def parse_pages (contents)
    # this method takes a variable and strips out the players data into a hash
    /teamtable(.*)<\/table>/ =~ contents
    return $1
#   deltags = ["div", "hr", "p", "em", "font", "small", "b", "img", "thead", "tbody", "table"]
#   sPlayerRaw = substr($sPlayerRaw, 0, strpos($sPlayerRaw, "/table>")+7);
#   sPlayerRaw = eregi_replace("<tr[^>]+>","<tr>" ,$sPlayerRaw);
#   foreach (aDelTag as sTag) sPlayerRaw =eregi_replace("</?".sTag."[^>]*>","" ,sPlayerRaw);
#   sPlayerRaw = eregi_replace("[\t\n\r]","" ,sPlayerRaw);
#  	sPlayerRaw = eregi_replace("<tr><th.+</th></tr>","" ,sPlayerRaw);
#  	sPlayerRaw = eregi_replace("<td class=\"owner\">[^<]+</td>","" ,sPlayerRaw);
#  	sPlayerRaw = eregi_replace("<td class=\"opp wide\">[^<]+</td>","" ,sPlayerRaw);
#  	sPlayerRaw = eregi_replace("<td[^>]+>","<td>" ,sPlayerRaw);
#  	sPlayerRaw = eregi_replace("<td><a href=\"/b1/2860/[^<]+</a></td>","" ,sPlayerRaw);
#  	sPlayerRaw = eregi_replace("</span> +<a href=[^>]+news+[^>]+></a>","</span>" ,sPlayerRaw);
#  	sPlayerRaw = eregi_replace(" *<span>\(","</td><td>" ,sPlayerRaw);
#  	sPlayerRaw = eregi_replace(")</span> *</td>","</td>" ,sPlayerRaw);
#  	sPlayerRaw = eregi_replace(" +- +","</td><td>" ,sPlayerRaw);
#  	sPlayerRaw = eregi_replace("<a href=\"http://sports.yahoo.com/mlb/players/","" ,sPlayerRaw);
#  	sPlayerRaw = eregi_replace("\" target=\"sports\" class=\"name\">","</td><td>" ,sPlayerRaw);
#  	sPlayerRaw = eregi_replace("\)\</span\>\ \<span\ class\=\"status\"\>NA\</span\>\ ","",sPlayerRaw);
#  	sPlayerRaw = str_replace("<td>-</td>", "<td></td>", sPlayerRaw);
#  	sPlayerRaw = str_replace("</a>","" , sPlayerRaw);
#  	sPlayerRaw = str_replace("<tr><td>", "('", sPlayerRaw);
#  	sPlayerRaw = str_replace("</td><td>", "','", sPlayerRaw);
#  	sPlayerRaw = str_replace("</td></tr>", "'),\n", sPlayerRaw);
  end
  
  def print_sql (stats)
    # this method takes a hash and outputs it in SQL format
  end

  t = read_pages(ARGV[0])
  #puts t
  puts "The answer is..."
  puts parse_pages(t)
  