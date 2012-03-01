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
end
