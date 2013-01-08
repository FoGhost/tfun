class TextPostsController < ApplicationController
  before_filter :require_login

  def index
  end

  def new
    @legend = t(:new_text_post)
    @text_post = TextPost.new
  end

  def create
    @text_post = TextPost.new(params[:text_post])
    @text_post.user_id = current_user.id
    #redirect_to error page  unless @post.save
    @text_post.save
  end

  def edit
    @legend = t(:edit_text_post)
    @text_post = TextPost.find(params[:id])
  end

  def show
    @text_post = TextPost.find(params[:id])
  end

  def update
    @text_post = TextPost.find(params[:id])
    if @text_post.update_attributes(params[:text_post])
      redirect_to @text_post
    else
      render :action => :edit
    end
  end

  def destroy
    @text_post = TextPost.find(params[:id])
    @text_post.destroy
  end
end
