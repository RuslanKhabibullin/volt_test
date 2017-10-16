CarrierWave.configure do |config|
  config.cache_dir = Rails.root.join("tmp", "uploads")
  config.fog_provider = "fog/aws"
  config.fog_credentials = {
    provider:              "AWS",
    host:                  "s3.amazonaws.com",
    region:                "eu-central-1",
    aws_access_key_id:     ENV["AWS_ACCESS_KEY"],
    aws_secret_access_key: ENV["AWS_SECRET_KEY"]
  }
  config.fog_directory = ENV["FOG_DIRECTORY"]
end
