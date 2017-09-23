# == Schema Information
#
# Table name: play_logs
#
#  id         :integer          not null, primary key
#  song_id    :integer          not null, indexed
#  time       :datetime         not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Foreign Keys
#
#  fk_rails_...  (song_id => songs.song_id)
#

# 再生ログ
class PlayLog < ApplicationRecord
  belongs_to :song
  validates :time, presence: true
end
