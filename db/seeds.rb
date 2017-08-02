num = 5

num.times do |no|
  Person.create :name => "名前 #{no}"
end

num.times do |no|
  Song.create :title => "タイトル #{no}", :artist_id => no + 1
end
