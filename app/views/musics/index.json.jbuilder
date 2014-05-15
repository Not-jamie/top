json.array!(@musics) do |music|
  json.extract! music, :id, :title, :artist, :theme, :spotify_url, :year
  json.url music_url(music, format: :json)
end
