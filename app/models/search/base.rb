module Search
  # 検索用ベースクラス
  class Base
    def contains(attribute, value)
      "#{attribute} LIKE '%#{escape_like(value)}%'"
    end

    def escape_like(string)
      string.gsub(/[\\%_]/) { |m| "\\#{m}" }
    end
  end
end
