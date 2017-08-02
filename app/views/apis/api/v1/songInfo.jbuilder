json.set! :song_id, @song.song_id
json.set! :title, @song.title
if @artist.present? then
  json.artist(@artist, :id, :name)
else
  json.set! :artist, nil
end
if @lyricist.present? then
  json.lyricist(@lyricist, :id, :name)
else
  json.set! :lyricist, nil
end
if @composer.present? then
  json.composer(@composer, :id, :name)
else
  json.set! :composer, nil
end
if @horeographer.present? then
  json.choreographer(@choreographer, :id, :name)
else
  json.set! :choreographer, nil
end
json.set! :badge do
  json.set! :beginners, @song.beginners_badge
  json.set! :person, @song.person_badge
end
