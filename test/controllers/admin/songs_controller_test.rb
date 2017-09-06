require 'test_helper'

class Admin::SongsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @song = songs(:one)
  end

  test "should get index" do
    get admin_songs_url
    assert_response :success
  end
=begin
  test "should get new" do
    get new_admin_song_url
    assert_response :success
  end

  test "should create song" do
    assert_difference('Song.count') do
      post admin_songs_url, params: { song: {  } }
    end

    assert_redirected_to admin_song_url(Song.last)
  end

  test "should show song" do
    get admin_song_url(@song)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_song_url(@song)
    assert_response :success
  end

  test "should update song" do
    patch admin_song_url(@song), params: { song: {  } }
    assert_redirected_to admin_song_url(@song)
  end

  test "should destroy song" do
    assert_difference('Song.count', -1) do
      delete admin_song_url(@song)
    end

    assert_redirected_to admin_songs_url
  end
=end
end
