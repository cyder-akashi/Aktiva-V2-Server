class Song < ApplicationRecord
  belongs_to :artist, :class_name => "People", :foreign_key => 'artist_id'
  belongs_to :choreographer, :class_name => "People", :foreign_key => 'choreographer_id'
  belongs_to :composer, :class_name => "People", :foreign_key => 'composer_id'
  belongs_to :lyricist, :class_name => "People", :foreign_key => 'lyricist_id'
  has_many :lyrics
  validates :title, :presence => true
  validates :beginners_badge, :presence => true
  validates :person_badge, :presence => true
end
