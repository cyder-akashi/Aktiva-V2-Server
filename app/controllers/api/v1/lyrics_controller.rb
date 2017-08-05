module Api
  module V1
    # 曲の歌詞を扱うコントローラ
    class LyricsController < ApplicationController
      def index
        @song = Song.find(params[:song_id])
        render 'index', formats: 'json', handlers: 'jbuilder'
      end
    end
  end
end
