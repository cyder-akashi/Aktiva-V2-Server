class Lyric < ApplicationRecord
  belongs_to :song
  validates :time, presence: true
  validates :text, presence: true
end
