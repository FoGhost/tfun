# encoding: utf-8

class ImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  storage :grid_fs

  version :in_box do
    process :resize_to_fill => [80, 80]
  end

  def store_dir
    "#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
end
