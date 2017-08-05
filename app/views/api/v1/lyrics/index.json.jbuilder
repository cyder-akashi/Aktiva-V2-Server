json.set! :song_id, @song.song_id
json.lyrics do |json|
  json.array!(@song.lyrics) do |lyric|
    json.extract!(lyric,:time,:text)
  end
end
