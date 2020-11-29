class PostsController < ApplicationController
  def index
    @posts = Post.order(created_at: :desc).limit(9)
  end

  def show
  end
end
