module Api
  module V1
    # 検索用コントローラ
    class SearchController < ApplicationController
      def index
        @keyword = params[:keyword]
        @song = Search::Song.new(@keyword)
        @songs = @song.matches
        render 'index', formats: 'json', handlers: 'jbuilder'
      end
    end
  end
end
