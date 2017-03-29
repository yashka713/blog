class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    @post = Post.find_by(id: params[:post_id])
    @comment = @post.comments.create(comment_params)
    respond_to do |format|
      if @comment.save
        format.html { redirect_to @post }
      else
        format.html { render :'posts/show', post: @post, danger: 'Comment was failed' }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
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
