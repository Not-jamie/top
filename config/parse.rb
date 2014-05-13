#!/usr/bin/env ruby
#require 'json'
RAILS_ENV = 'development'
require File.expand_path('../environment', __FILE__)

f = File.open("rows.json")
f = File.read("rows.json")
# scan leaves out punctuation such as ' and .
# split divides by space and may work better doesn't
obj = JSON.parse(f)
length = obj.keys.length
i = 0
while i < length
	
  @music = Music.new
  @music. = obj[obj.keys[i]]['played']
  @athlete.goals = obj[obj.keys[i]]['goals']    
  @athlete.assists = obj[obj.keys[i]]['assists']
  @athlete.minutes = obj[obj.keys[i]]['minutes']
  @athlete.yellowCards = obj[obj.keys[i]]['yellowCards']
  @athlete.yellowRedCards = obj[obj.keys[i]]['yellowRedCards']
  @athlete.order = obj[obj.keys[i]]['order']
  @athlete.name = obj[obj.keys[i]]['name']
  @athlete.nickname = obj[obj.keys[i]]['nickname']
  @athlete.number = obj[obj.keys[i]]['number']
  @athlete.imageURL = obj[obj.keys[i]]['imageURL']
  @athlete.position = obj[obj.keys[i]]['name']
  @athlete.name = obj[obj.keys[i]]['name']
  @athlete.save #formerly @athlete.create
  #obj[obj.keys[i]]['nameofit']
  i += 1
end

#http://openrefine.org/ might be useful if nae luck