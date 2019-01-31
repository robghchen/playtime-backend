class Api::V1::PostsController < ApplicationController

  skip_before_action :authorized, only: [:index]
  before_action :find_post, only: [:update, :destroy]

  def index
    @posts = Post.all
    render json: @posts
  end

  def create
    @post = Post.create(post_params)
    render json: @post, status: :accepted
  end

  def update
    @post.update(post_params)
    if @post.save
      render json: @post, status: :accepted
    else
      render json: { errors: @post.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    @post.destroy
    render json: { message: “removed” }, status: :ok
  end

  private

  def post_params
    params.require(:post).permit(:user_id, :content)
  end

  def find_post
    @post = Post.find(params[:id])
  end
end