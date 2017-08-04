module Api
  module V1
    # 曲情報を扱うコントローラ
    class SongInfoController < ApplicationController
      def index
        @song = Song.find(params[:song_id])
        render 'show', formats: 'json', handlers: 'jbuilder'
      end
    end
  end
end
