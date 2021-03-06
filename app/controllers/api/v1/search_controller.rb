module Api
  module V1
    # 検索用コントローラ
    class SearchController < ApplicationController
      module Constants
        DEFAULT_NUM = 10
        DEFAULT_PAGE = 1
      end
      Constants.freeze

      def index
        check_params
        song_search_object = Search::Song.new(@keyword, @num, @page)
        @songs = song_search_object.matches
        @hit = song_search_object.hit_count
        render "index", formats: "json", handlers: "jbuilder"
      end

      private

        def check_params
          @keyword = params[:keyword] || ""
          @num = params[:num]&.to_i.try(:>, 0) ? params[:num].to_i : Constants::DEFAULT_NUM
          @page = params[:page]&.to_i.try(:>, 0) ? params[:page].to_i : Constants::DEFAULT_PAGE
        end
    end
  end
end
