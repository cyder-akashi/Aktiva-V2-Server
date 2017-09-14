module Search
  # 楽曲検索用クラス
  class Song < Base
    attr_accessor :keyword, :num, :page

    def initialize(keyword, num, page)
      @num = num
      @page = page
      @songs = ::Song.where(contains(:title, keyword))
    end

    def matches
      offset_num = num * (page - 1)
      @songs.offset(offset_num).limit(num)
    end

    def hit_count
      @songs.length
    end
  end
end
