json.set! :song_id, @song.song_id
json.set! :title, @song.title
if @song.artist.present?
  json.artist(@song.artist, :id, :name)
else
  json.set! :artist, nil
end
if @song.lyricist.present?
  json.lyricist(@song.lyricist, :id, :name)
else
  json.set! :lyricist, nil
end
if @song.composer.present?
  json.composer(@song.composer, :id, :name)
else
  json.set! :composer, nil
end
if @song.choreographer.present?
  json.choreographer(@song.choreographer, :id, :name)
else
  json.set! :choreographer, nil
end
json.set! :badge do
  json.set! :beginners, @song.beginners_badge
  json.set! :person, @song.person_badge
end
