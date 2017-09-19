module Api
  module V1
    # 曲の歌詞を扱うコントローラ
    class LyricsController < ApplicationController
      def index
        @song = Song.find(params[:song_id])
        @lyrics = @song.lyrics.order(:time)
        render formats: "json", handlers: "jbuilder"
      end
    end
  end
end
