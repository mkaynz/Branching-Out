class PostsController < ApplicationController

  before_action :authenticate_user!, except: [:index, :show]

    def index
        @posts = Post.all
        render :index
    end

    def show
        @post = Post.find(params[:id])
        render :show
      end

    def new
        @post = Post.new
        render :new
    end

    def create
        @post = Post.new(params.require(:post).permit(:title, :description))
        if @post.save
          flash[:success] = "New blog post successfully created!"
          redirect_to posts_url
        else
          flash.now[:error] = "Blog Post creation failed"
          render :new
        end
      end
end
