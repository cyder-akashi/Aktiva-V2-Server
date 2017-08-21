module Search
  # 楽曲検索用クラス
  class Song < Base
    attr_accessor :keyword, :num, :page

    def initialize(keyword, num, page)
      @keyword = keyword
      @num = num
      @page = page
    end

    def matches
      ::Song.where(contains(:title, keyword)).offset(num * (page - 1)).limit(num)
    end
  end
end
