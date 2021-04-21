class CommentsController < ApplicationController

  before_action :authenticate_user!, except: [:index, :show]

  
  def index
    @post = Post.find(params[:post_id])
    @comments = @post.comments
    render :index
  end

  def show
  @comment = Comment.find(params[:id])
  render :show
  end

  def new
  @post = Post.find(params[:post_id])
  @comment = Comment.new
  render :new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(params.require(:comment).permit(:body))
    if @comment.save
      flash[:success] = "Comment created successfully!"
      redirect_to post_comments_url(@post)
    else
      flash.now[:error] = "Comment could not be created."
      render :new
    end
  end
end
