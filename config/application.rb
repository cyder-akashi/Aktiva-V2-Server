require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module AktivaV2Api
  class Application < Rails::Application
    config.paths.add File.join('app', 'apis'), glob: File.join('**', '*.rb')
    config.autoload_paths += Dir[Rails.root.join('app', 'apis', '*')]

    config.middleware.use(Rack::Config) do |env|
      env['api.tilt.root'] = Rails.root.join 'app', 'views', 'apis'
    end
  end
end
