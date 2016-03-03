class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def show
    @post = Post.find_by post_id: params[:post_id]
  end

  def edit
    @post = Post.find_by post_id: params[:post_id]
  end

  def update
    @post = Post.find_by post_id: params[:post_id]
    @post.title = params[:post][:title]
    @post.body = params[:post][:body]

    if @post.save
      # redirect to "/posts"
      redirect_to post_path(post_id: @post.post_id)
    else
      render :edit
    end
  end

  def create
    @post = Post.new
    @post.title = params[:post][:title]
    @post.body = params[:post][:body]
    @post.post_id = params[:post][:post_id]

    if @post.save
      # redirect to "/"
      redirect_to root_path
    else
      render :new
    end
  end

  def delete
    @post = Post.find_by post_id: params[:post_id]
    @post.destroy
    # redirect to "/"
    redirect_to root_path
  end
end
