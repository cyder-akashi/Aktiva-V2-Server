# アーティスト、作詞者、作曲者、振り付け師情報
class Person < ApplicationRecord
  has_many :artists, class_name: "Song", foreign_key: "artist_id"
  has_many :lyricists, class_name: "Song", foreign_key: "lyricist_id"
  has_many :composers, class_name: "Song", foreign_key: "composer_id"
  has_many :choreographers, class_name: "Song", foreign_key: "choreographer_id"
  validates :name, presence: true
end
