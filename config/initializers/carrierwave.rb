require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

CarrierWave.configure do |config|
  config.storage = :fog
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: Rails.application.secrets.aws_access_key_id,
    aws_secret_access_key: Rails.application.secrets.aws_secret_access_key_id,
    region: Rails.application.secrets.aws_region_id
  }

    case Rails.env
    when 'development'
        config.fog_directory  = Rails.application.secrets.aws_bucket_name_id
        config.asset_host = Rails.application.secrets.aws_bucket_url_id
    when 'production'
        config.fog_directory  = Rails.application.secrets.aws_bucket_name_id
        config.asset_host = Rails.application.secrets.aws_bucket_url_id
    end
end