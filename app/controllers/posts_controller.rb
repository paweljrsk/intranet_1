class PostsController < ApplicationController
  def index
    if not user_signed_in?
      redirect_to new_user_session_path
    end

    @posts = Post.order(created_at: :desc).limit(9)
  end

  def show
    @post = Post.find(params[:id])
    @product_type = @post.product_type
  end
  
end
