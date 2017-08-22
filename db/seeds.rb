num = 5

num.times do |no|
  person = Person.create name: "名前 #{no}"
  Song.create title: "タイトル #{no}", artist: person, video: 'test'
end
