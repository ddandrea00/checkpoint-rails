class PostsController < ApplicationController

  def index
    @posts = Post.all
  end
  def show
    @post = Post.find(params[:id])
  end
  def new
    @post = Post.new
  end
  def create
  @post = Post.create!(post_params)
  redirect_to "/posts/#{@post.id}"
  end
end
