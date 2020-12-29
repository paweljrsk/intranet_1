class PostsController < ApplicationController
  def index
    @posts = Post.order(created_at: :desc).limit(9)
  end

  def show
    @post = Post.find(params[:id])
    @product_type = @post.product_type
  end
end
