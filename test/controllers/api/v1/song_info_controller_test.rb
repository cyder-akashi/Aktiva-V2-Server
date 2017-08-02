require 'test_helper'

class Api::V1::SongInfoControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get song_info_show_url
    assert_response :success
  end

end
