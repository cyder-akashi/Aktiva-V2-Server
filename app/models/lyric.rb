# 歌詞情報
class Lyric < ApplicationRecord
  belongs_to :song
  validates :time, presence: true
  validates :text, length: { minimum: 0 }, allow_nil: false
end
