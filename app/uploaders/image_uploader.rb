# encoding: utf-8

class ImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  storage :grid_fs

  version :in_box do
    process :resize_to_fill => [80, 80]
  end
end
