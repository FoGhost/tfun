class ImagePost < Post
  mount_uploader :image, ImageUploader
  field :description

  def image_grid_dir
    /\A\/grid\/(?<dir>.*)/ =~ image_url and (dir || "")
  end
end
