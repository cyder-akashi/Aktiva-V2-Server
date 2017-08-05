song_num = 5
lyrics_num = 5


song_num.times do |no|
  person = Person.create name: "名前 #{no}"
  song = Song.create title: "タイトル #{no}", artist: person
  lyrics_num.times do |lyrics_no|
    Lyric.create song: song, time: "00:#{lyrics_no}", text: "test_lyrics #{lyrics_no}"
  end
end
