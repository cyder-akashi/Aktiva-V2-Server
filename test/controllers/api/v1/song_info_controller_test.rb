require 'test_helper'

class Api::V1::SongInfoControllerTest < ActionDispatch::IntegrationTest
  def setup
    @song = songs(:one)
  end

  test "should get show" do
    get api_v1_song_info_url, params: { song_id: @song.song_id }
    assert_response :success
  end

end
