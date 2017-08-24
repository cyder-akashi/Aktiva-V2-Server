hosino_gen = Person.create name: '星野 源'
mikiko = Person.create name: 'MIKIKO'
song_one = Song.create title: '恋',
                       artist: hosino_gen,
                       lyricist: hosino_gen,
                       composer: hosino_gen,
                       choreographer: mikiko,
                       video: '1.mp4'

akb48 = Person.create name: 'AKB48'
akimoto_yasushi = Person.create name: '秋元 康'
itou_shintaro = Person.create name: '伊藤 心太郎'
papaiya_suzuki = Person.create name: 'パパイヤ 鈴木'
song_two = Song.create title: '恋するフォーチュンクッキー',
                       artist: akb48,
                       lyricist: akimoto_yasushi,
                       composer: itou_shintaro,
                       choreographer: papaiya_suzuki,
                       video: '2.mp4'

gumi_hachi = Person.create name: 'GUMI / ハチ'
hachi = Person.create name: 'ハチ'
ashibuto_penta = Person.create name: '足太 ぺんた'
song_three = Song.create title: 'ドーナツホール',
                         artist: gumi_hachi,
                         lyricist: hachi,
                         composer: hachi,
                         choreographer: ashibuto_penta,
                         video: '3.mp4'

una_kinoshita = Person.create name: '音街ウナ / キノシタ'
kinoshita = Person.create name: 'キノシタ'
kanzawa_arisa = Person.create name: '神沢 有紗'
song_four = Song.create title: 'はやくそれになりたい！',
                        artist: una_kinoshita,
                        lyricist: kinoshita,
                        composer: kinoshita,
                        choreographer: kanzawa_arisa,
                        video: '4.mp4'
