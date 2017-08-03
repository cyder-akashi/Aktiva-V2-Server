json.set! :song_id, @song.song_id
json.set! :title, @song.title
@song.artist.present? ?
  json.artist(@song.artist, :id, :name) :
  json.set!(:artist, nil)
@song.lyricist.present? ?
  json.artist(@song.lyricist, :id, :name) :
  json.set!(:lyricist, nil)
@song.composer.present? ?
  json.composer(@song.composer, :id, :name) :
  json.set!(:composer, nil)
@song.choreographer.present? ?
  json.choreographer(@song.choreographer, :id, :name) :
  json.set!(:choreographer, nil)
json.set! :badge do
  json.set! :beginners, @song.beginners_badge
  json.set! :person, @song.person_badge
end
