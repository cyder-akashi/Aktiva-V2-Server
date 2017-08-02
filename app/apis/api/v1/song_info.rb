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
          if @song.artist_id.present? then
            @artist = Person.find(@song.artist_id)
          end
          if @song.lyricist_id.present? then
            @lyricist = Person.find(@song.lyricist_id)
          end
          if @song.composer_id.present? then
            @composer = Person.find(@song.composer_id)
          end
          if @song.choreographer_id.present? then
            @choreographer = Person.find(@song.choreographer_id)
          end
        end
      end
    end
  end
end
