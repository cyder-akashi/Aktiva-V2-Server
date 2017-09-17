require 'test_helper'

class LyricTest < ActiveSupport::TestCase
  setup do
    @song = songs(:one)
  end

  test 'valid lyric' do
    lyric = Lyric.new(song: @song, text: 'test', time: '00:00:01.000')
    assert lyric.valid?
  end

  test 'valid lyric with empty text' do
    lyric = Lyric.new(song: @song, text: '', time: '00:00:01.000')
    assert lyric.valid?
  end

  test 'invalid lyric without text' do
    lyric = Lyric.new(song: @song, time: '00:00:01.000')
    assert lyric.invalid?
  end
end
