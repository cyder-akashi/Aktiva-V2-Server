# 再生ログ
class PlayLog < ApplicationRecord
  belongs_to :song
  validates :time, presence: true
end
