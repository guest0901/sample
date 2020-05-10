class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  def create
    Post.create(message: params[:post][:message])
    redirect_to posts_path
  end
end