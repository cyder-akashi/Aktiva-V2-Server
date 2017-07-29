json.set! :song_id, @song.song_id
json.set! :title, @song.title
if not @artist.nil? then
  json.artist(@artist, :id, :name)
else
  json.set! :artist, nil
end
if not @lyricist.nil? then
  json.lyricist(@lyricist, :id, :name)
else
  json.set! :lyricist, nil
end
if not @composer.nil? then
  json.composer(@composer, :id, :name)
else
  json.set! :composer, nil
end
if not @horeographer.nil? then
  json.choreographer(@choreographer, :id, :name)
else
  json.set! :choreographer, nil
end
