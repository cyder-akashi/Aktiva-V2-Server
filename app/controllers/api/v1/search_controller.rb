module Api
  module V1
    # 検索用コントローラ
    class SearchController < ApplicationController
      DEFAULT_NUM = 10
      DEFAULT_PAGE = 1

      def index
        check_params
        song_search_object = Search::Song.new(@keyword, @num, @page)
        @songs = song_search_object.matches
        render 'index', formats: 'json', handlers: 'jbuilder'
      end

      private

      def check_params
        @keyword = params[:keyword]
        @num = params[:num].present? ? params[:num].to_i : DEFAULT_NUM
        @page = params[:page].present? ? params[:page].to_i : DEFAULT_PAGE
      end
    end
  end
end
