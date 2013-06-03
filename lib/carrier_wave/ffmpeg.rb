require 'streamio-ffmpeg'
module CarrierWave
  module FFMPEG
    extend ActiveSupport::Concern

    module ClassMethods
      def encode_video(format)
        process :encode_video => [format]
      end
    end

    def encode_video(format)
    end
  end
end
