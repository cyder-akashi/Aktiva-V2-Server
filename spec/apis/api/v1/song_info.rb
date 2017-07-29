require 'rails_helper'

RSpec.describe API::V1::SongInfo, type: :request do
  describe 'GET /api/v1/songInfo' do
    let(:artist) { FactoryGirl.create(:person) }
    let(:song) { FactoryGirl.create(:song, artist_id: artist.id) }
    let(:path) { "/api/v1/songInfo?songId=#{song.song_id}" }

    it 'responds successfully' do
      get path
      expect(response).to be_success
      expect(response.status).to eq(200)
    end
  end
end

