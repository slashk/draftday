#!/usr/bin/env ruby
#
#  Created by Ken Pepple on 2007-04-10.
#  Copyright (c) 2007. All rights reserved.

#require "html/xmltree"

client=HTTPAccess2::Client.new
#url="http://www.elliottbaybook.com/"
url="http://www.elliottbaybook.com/"
parser = HTMLTree::XMLParser.new(false,false)
parser.feed(client.getContent(url))
xml=parser.document

xml.elements.each('//p[@class="small"]') do |node|
  event=BookEvent.new
  event.store="Elliott Bay Book Company"
  event.location="Elliott Bay Book Company"
  event.time=node.to_s.gsub(/<\<[^>]+>/,'')
  event.author=node.elements['./a[1]/b[1]'].text rescue nil
  event.title=nil
  event.note=node.elements['.'].to_s rescue ''

  next unless event.time and event.author

  if event.note =~ / at [0-9].* at ([^<>]*)/
    event.location=$1
  end

  event.time=BookTime.new_from_string(event.time)
  next unless event.time

  books.push(event)
end