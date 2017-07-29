module API
  module V1
    class SongInfo < Grape::API
      resource :songInfo do
        desc 'GET /api/v1/songInfo'
        params do
          requires :songId, type: Integer, desc: "Song Id."
        end
        get '/', jbuilder: 'api/v1/songInfo' do
          @song = Song.find(params[:songId])
        end
      end
    end
  end
end
