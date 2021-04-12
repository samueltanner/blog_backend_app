class Api::PostsController < ApplicationController
  # before_action :authenticate_user, except: [:index, :show]

  def index
    @posts = Post.all
    render "index.json.jbuilder"
  end

  def create
    @post = Post.new(
      title: params[:title],
      body: params[:body],
      image: params[:image],
      user_id: current_user.id,
    )
    if @post.save
      render "show.json.jbuilder"
    else
      render json: { errors: @post.errors.full_messages }, status: :bad_request
    end
  end

  def show
    @post = Post.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def update
    @post = Post.find_by(id: params[:id])
    @post.title = params[:title] || @post.title
    @post.body = params[:body] || @post.body
    if @post.save
      render "show.json.jbuilder"
    else
      render json: { errors: @post.errors.full_messages }, status: :bad_request
    end
  end

  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
    render json: { message: "Post successfully destroyed!" }
  end
end
