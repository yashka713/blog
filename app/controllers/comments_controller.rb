class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    @post = Post.find_by(id: params[:post_id])
    @comment = @post.comments.create(comment_params)
    redirect_to post_path(@post)
  end

  def destroy
    @post = Post.find_by(id: params[:post_id])
    @comment = @post.comments.find_by(id: params[:id])
    @comment.destroy
    redirect_to post_path(@post)
  end

  private
  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end
end
