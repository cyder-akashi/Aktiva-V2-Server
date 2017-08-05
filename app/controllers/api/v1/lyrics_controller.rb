module Api
  module V1
    # 曲の歌詞を扱うコントローラ
    class LyricsController < ApplicationController
      def index
        @song = Song.find(params[:song_id])
      end
    end
  end
end
