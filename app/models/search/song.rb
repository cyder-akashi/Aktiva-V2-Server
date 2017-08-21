module Search
  # 楽曲検索用クラス
  class Song < Base
    attr_accessor :keyword

    def initialize(keyword)
      @keyword = keyword
    end

    def matches
      ::Song.where(contains(:title, keyword))
    end
  end
end
