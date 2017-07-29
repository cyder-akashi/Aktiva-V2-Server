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
          if not @song.artist_id.nil? then
            @artist = Person.find(@song.artist_id)
          end
          if not @song.lyricist_id.nil? then
            @lyricist = Person.find(@song.lyricist_id)
          end
          if not @song.composer_id.nil? then
            @composer = Person.find(@song.composer_id)
          end
          if not @song.choreographer_id.nil? then
            @choreographer = Person.find(@song.choreographer_id)
          end
        end
      end
    end
  end
end
