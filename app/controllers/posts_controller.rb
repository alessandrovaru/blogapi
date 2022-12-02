class PostsController < ApplicationController
  
  def index
    @post = Post.where(published: true)
    render json: @post, status: :ok
  end
  
  def show
    @post = Post.find(params[:id])
    render json: @post, status: :ok
  end
end