#!/usr/bin/env ruby -wKU

require 'rubygems'
require 'net/http'
require 'hpricot'

# NOTES
# there are a lot of gotchas on parsing/scraping yahoo! stats
# batter and pitching stats are displayed differently and at different URLs
# some stats are combined in one table cell and need further regex parsing
# 

def get_player_page(s, p, c)
  req = nil
  res = nil
  u = s + p
  url = URI.parse(u)
  req = Net::HTTP::Post.new(url.path)
  req['Cookie']= c
  res = Net::HTTP.start(url.host, url.port) {|http|
    http.request(req, url.query)
  }
end

def distill_hitters_page(res)
  # TODO players needs to be an array of hashes
  p = Array.new
  player = Hash.new
  doc = Hpricot(res.body)
  ['odd first','odd', 'even','odd last'].each do |group|
    f = "tr[@class=" + group + "]"
    (doc/f).each do |line|
      name = (line/"a[@class='name']").inner_html
      x = (line/"td")
      # TODO need to further parse URL to find player key
      url = (x[0]/"a").first[:href]
      url =~ /\/(\d+)$/
      yahoo_ref = $1
      # TODO find pos and team from X[0]
      detail = (x[0]/"[@class='detail']/").inner_html
      detail =~ /\((.*) - (.*)\)/
      pos = $2
      team = $1
      pos.gsub!(/\,/," ")
      # puts url + " : " + yahoo_ref.to_s
      # TODO separate HAB
      hab = x[7].inner_html
      hab =~ /(.*)\/(.*)/
      hit = $1
      ab = $2
      player = { 'yahoo' => yahoo_ref,
        'orank' => x[5].inner_html,
        'rank' => x[6].inner_html,
        'H' => hit,
        'AB' => ab,
        'R' => x[8].inner_html,
        'HR' => x[9].inner_html,
        'RBI' => x[10].inner_html,
        'SB' => x[11].inner_html,
        'team' => team,
        'pos' => pos,
        'player' => name,
        'AVG' => x[12].inner_html }
      p << player
    end
  end  
  # TODO return the array of players
  return p
end

def distill_pitchers_page(res)
  # TODO players needs to be an array of hashes
  p = Array.new
  player = Hash.new
  doc = Hpricot(res.body)
  ['odd first','odd', 'even','odd last'].each do |group|
    f = "tr[@class=" + group + "]"
    (doc/f).each do |line|
      name = (line/"a[@class='name']").inner_html
      x = (line/"td")
      # TODO need to further parse URL to find player key
      url = (x[0]/"a").first[:href]
      url =~ /\/(\d+)$/
      yahoo_ref = $1
      # TODO find pos and team from X[0]
      detail = (x[0]/"[@class='detail']/").inner_html
      detail =~ /\((.*) - (.*)\)/
      pos = $2
      team = $1
      pos.gsub!(/\,/," ")
      player = { 'yahoo' => yahoo_ref,
        'orank' => x[5].inner_html,
        'rank' => x[6].inner_html,
        'IP' => x[7].inner_html,
        'W' => x[8].inner_html,
        'SV' => x[9].inner_html,
        'K' => x[10].inner_html,
        'ERA' => x[11].inner_html,
        'team' => team,
        'pos' => pos,
        'player' => name,
        'WHIP' => x[12].inner_html }
      p << player
    end
  end  
  # TODO return the array of players
  return p
end

def get_next_page_path(res)
  begin
    doc = Hpricot(res.body)
    (doc/"ul#playerspagenav1"/"li[@class='last ']"/"a").first[:href]
  rescue 
    return nil
  end
end

def spit(players, format)
  # TODO put in the output printing code
  categories = ["orank", "yahoo", "player", "team", "pos", "rank", "IP", "W", "SV", "K", "ERA", "WHIP", "R", "HR", "RBI", "SB", "AVG", "AB"]
  case format
  when 'sql'
    print "INSERT DELAYED INTO players ("
    print categories.sort.join(",").to_s
    print ") VALUES "
    players.each do |p|
      print "("
      s = Array.new
      categories.sort.each do |c|
        s << "'" + p[c].to_s + "'"
      end
      print s.join(",")
      puts "),"
    end
  end
end

site = 'http://baseball.fantasysports.yahoo.com'
path = '/b1/25357/players?status=A&pos=B&stat1=S_S_2007'
cookie = "B=fm81hdma1eakk; Y=v=1&n=4t90ciibh0ajb&l=af4ffb440hj7b8dad4j/o&p=m242spo4903f02&r=0u&lg=us&intl=us; T=z=99164A9DL74Abx5B039Ze8uNgY1Mjc2NTE1MTM-&a=AAE&sk=DAA1d.AqrcQYq6&d=c2wBTVFFeU5UQXhNall5TmpRLQFhAUFBRQF6egE5OTE2NEFnV0E- ";
players = Array.new
until path.nil? do
  page = get_player_page(site, path, cookie)
  path = nil
  players = players + distill_hitters_page(page)
  path = get_next_page_path(page)
  page = nil
end
path = '/b1/25357/players?status=A&pos=P&stat1=S_S_2007'
until path.nil? do
  page = get_player_page(site, path, cookie)
  path = nil
  players = players + distill_pitchers_page(page)
  path = get_next_page_path(page)
  page = nil
end
spit(players, 'sql')