class PostsController < ApplicationController
  before_filter :require_login, :except => :index

  def index
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params[:post])
    @post.user_id = current_user.id
    @post.save
  end

  def edit
    @post = Post.find(params[:id])
  end

  def show
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(params[:post])
      redirect_to @post
    else
      render :action => :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
  end
end
