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
      offset_num = num * (page - 1)
      ::Song.where(contains(:title, keyword)).offset(offset_num).limit(num)
    end
  end
end
