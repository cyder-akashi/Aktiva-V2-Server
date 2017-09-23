# == Schema Information
#
# Table name: songs
#
#  song_id          :integer          not null, primary key
#  title            :string(255)      not null
#  artist_id        :integer          not null, indexed
#  lyricist_id      :integer          indexed
#  composer_id      :integer          indexed
#  choreographer_id :integer          indexed
#  beginners_badge  :boolean          default(FALSE)
#  person_badge     :boolean          default(FALSE)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  video            :string(255)      not null
#
# Foreign Keys
#
#  fk_rails_...  (artist_id => people.id)
#  fk_rails_...  (choreographer_id => people.id)
#  fk_rails_...  (composer_id => people.id)
#  fk_rails_...  (lyricist_id => people.id)
#

# 曲情報
class Song < ApplicationRecord
  belongs_to :artist,
             class_name: "Person",
             foreign_key: "artist_id"
  belongs_to :choreographer,
             class_name: "Person",
             foreign_key: "choreographer_id",
             optional: true
  belongs_to :composer,
             class_name: "Person",
             foreign_key: "composer_id",
             optional: true
  belongs_to :lyricist,
             class_name: "Person",
             foreign_key: "lyricist_id",
             optional: true
  has_many :lyrics
  has_many :play_logs
  validates :title, presence: true
end
