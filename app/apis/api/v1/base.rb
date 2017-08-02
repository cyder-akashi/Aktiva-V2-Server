module API
  module V1
    class Base < Grape::API
      format :json
      default_format :json

      # for Grape::Jbuilder
      formatter :json, Grape::Formatter::Jbuilder

      version 'v1', using: :path # /api/v1というパスになる

      # 例外ハンドル 404
      rescue_from ActiveRecord::RecordNotFound do |e|
        error!({ message: e.message, status: 404 }, 404)
      end

      # 例外ハンドル 400
      rescue_from Grape::Exceptions::ValidationErrors do |e|
        rack_response e.to_json, 400
      end

      # 例外ハンドル 500
      rescue_from :all do |e|
        if Rails.env.development?
          raise e
        else
          error!({ message: "Internal server error", status: 500 }, 500)
        end
      end

      mount V1::SongInfo
    end
  end
end
