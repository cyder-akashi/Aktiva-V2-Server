# == Schema Information
#
# Table name: lyrics
#
#  id         :integer          not null, primary key
#  song_id    :integer          not null, indexed
#  time       :time             not null
#  text       :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Foreign Keys
#
#  fk_rails_...  (song_id => songs.song_id)
#

# 歌詞情報
class Lyric < ApplicationRecord
  belongs_to :song
  validates :time, presence: true
  validates :text, length: { minimum: 0 }, allow_nil: false
end
