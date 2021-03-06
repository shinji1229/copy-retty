require_relative 'boot'

require 'rails/all'
require 'devise'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module CopyRetty
  class Application < Rails::Application
    config.active_record.default_timezone = :local
    config.time_zone = 'Tokyo'
     config.generators do |g|
      g.javascripts     false
      g.assets          false
      g.helper          false
      g.test_framework  false
    end
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
