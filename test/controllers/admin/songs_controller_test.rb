require 'test_helper'

module Admin
  class SongsControllerTest < ActionDispatch::IntegrationTest
    setup do
      @song = songs(:one)
    end

    test 'should get index' do
      get admin_songs_url
      assert_response :success
    end
  end
end
