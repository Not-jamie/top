#this was written by sandra
#!/usr/bin/env ruby
#!/usr/bin/env ruby
require 'json'
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
  @music.title = obj[obj.keys[i]]['title']
  @music.artist = obj[obj.keys[i]]['artist']    
  @music.theme = obj[obj.keys[i]]['theme']
  @music.year = obj[obj.keys[i]]['year']
  @music.spotify_url = obj[obj.keys[i]]['spotify_url']
  @music.save #formerly @word.create
  #obj[obj.keys[i]]['gold']
  i += 1
end

