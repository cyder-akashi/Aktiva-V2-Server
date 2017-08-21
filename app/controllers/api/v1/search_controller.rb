module Api
  module V1
    # 検索用コントローラ
    class SearchController < ApplicationController
      def index
        check_params
        @song = Search::Song.new(@keyword, @num, @page)
        @songs = @song.matches
        render 'index', formats: 'json', handlers: 'jbuilder'
      end

      private

      def check_params
        @keyword = params[:keyword]
        @num = 10
        @num = params[:num].to_i if params[:num].present?
        @page = 1
        @page = params[:page].to_i if params[:page].present?
      end
    end
  end
end
