# 曲情報
class Song < ApplicationRecord
  belongs_to :artist,
             class_name: 'Person',
             foreign_key: 'artist_id'
  belongs_to :choreographer,
             class_name: 'Person',
             foreign_key: 'choreographer_id',
             optional: true
  belongs_to :composer,
             class_name: 'Person',
             foreign_key: 'composer_id',
             optional: true
  belongs_to :lyricist,
             class_name: 'Person',
             foreign_key: 'lyricist_id',
             optional: true
  has_many :lyrics
  validates :title, presence: true
end
