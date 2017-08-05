json.set! :song_id, @song.song_id
json.lyrics do |json|
  json.array!(@song.lyrics) do |lyric|
    json.set! :time, lyric.time.strftime('%M:%S:%L')
    json.set! :text, lyric.text
  end
end
