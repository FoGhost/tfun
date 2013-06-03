class VideoPost < Post
  mount_uploader :video, VideoUploader
  field :description
end
