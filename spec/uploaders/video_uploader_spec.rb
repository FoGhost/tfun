require 'carrierwave/test/matchers'

describe VideoUploader do
  include CarrierWave::Test::Matchers

  before do
    VideoUploader.enable_processing = true
    @uploader = VideoUploader.new
    @uploader.store!(File.open("/Users/Ryou/Development/tfun/public/videoes/small.mp4"))
    @movie = FFMPEG::Movie.new("/Users/Ryou/Development/tfun/public/videoes/small.mp4")
  end

  after do
    VideoUploader.enable_processing = false
    @uploader.remove!
  end

  context '' do
    subject { @uploader.encode_video }
    it { should be_a(VideoUploader) }
  end

  context 'FFMPEg movie' do
    subject { @movie.duration }
    it { should == 5.57 }
  end
end
