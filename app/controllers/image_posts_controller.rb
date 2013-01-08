class ImagePostsController < ApplicationController
  before_filter :require_login

  def new
    @legend = t(:new_image_post)
    @image_post = ImagePost.new
  end

  def create
    @image_post = ImagePost.new(params[:image_post])
    @image_post.user_id = current_user.id
    return :nothing => true unless @image_post.save
    redirect_to "/"
  end
end
