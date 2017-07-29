module API
  module V1
    class Base < Grape::API
      format :json
      default_format :json

      # for Grape::Jbuilder
      formatter :json, Grape::Formatter::Jbuilder

      prefix :api # /apiというパスになる
      version 'v1', using: :path # /api/v1というパスになる

      # 例外ハンドル 404
      rescue_from ActiveRecord::RecordNotFound do |e|
        rack_response({ message: e.message, status: 404 }.to_json, 404)
      end

      mount V1::SongInfo
    end
  end
end
