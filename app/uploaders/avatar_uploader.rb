class AvatarUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  storage :fog

  version :thumb do
    process resize_to_fit: [300, 300]
  end

  def size_range
    0..3.megabytes
  end

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def extension_whitelist
    %w[jpg jpeg png]
  end

  def filename
    "#{secure_token}.#{file.extension}" if original_filename.present?
  end

  private

  def secure_token
    var = :"@#{mounted_as}_secure_token"
    model.instance_variable_get(var) || model.instance_variable_set(var, SecureRandom.uuid)
  end
end
