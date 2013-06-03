# encoding: utf-8
class VideoUploader < CarrierWave::Uploader::Base
  include CarrierWave::FFMPEG

  storage :file

  def store_dir
    'public/video/upload'
  end
end
