#!/usr/bin/env ruby
#
#  Created by Ken Pepple on 2007-04-22.
#  Copyright (c) 2007. All rights reserved.

require 'rubygems'
require 'open-uri'
require 'hpricot'
 
@url = "http://www.igvita.com/blog"
@response = ''
 
# open-uri RDoc: http://stdlib.rubyonrails.org/libdoc/open-uri/rdoc/index.html
open(@url, "User-Agent" => "Ruby/#{RUBY_VERSION}",
    "From" => "email@addr.com",
    "Referer" => "http://www.igvita.com/blog/") { |f|
    puts "Fetched document: #{f.base_uri}"
    puts "\t Content Type: #{f.content_type}\n"
    puts "\t Charset: #{f.charset}\n"
    puts "\t Content-Encoding: #{f.content_encoding}\n"
    puts "\t Last Modified: #{f.last_modified}\n\n"

    # Save the response body
    @response = f.read
}

#Rdoc: http://code.whytheluckystiff.net/hpricot/
doc = Hpricot(@response)

# Retrive number of comments
#  - Hover your mouse over the 'X Comments' heading at the end of this article
#  - Copy the XPath and confirm that it's the same as shown below
#puts (doc/"/html/body/div[2]/div[2]/div/table[3]").inner_html

# Pull out first quote (<blockquote> .... </blockquote>)
# - Note that we don't have to use the full XPath, we can simply search for all quotes
# - Because this function can return more than one element, we will only look at 'first'
puts (doc/"blockquote/p").first.inner_html

# Pull out all other posted stories and date posted
# - This searh function will return multiple elements
# - We are going to print the date, and then print the article name beside it
#(doc/"/html/body/div[4]/div/div[2]/ul/li/a/span").each do |article|
#	puts "#{article.inner_html} :: #{article.next_node.to_s}"
#end
