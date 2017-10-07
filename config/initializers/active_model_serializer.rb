ActiveModel::Serializer.configure do |config|
  config.adapter = :json_api
  config.key_transform = :underscore
end
