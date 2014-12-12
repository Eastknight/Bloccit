class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params) 
    @comment.user_id = current_user.id

    if @comment.save
      flash[:notice] = "Comment posted!"
      redirect_to [@post.topic, @post] 
    else
      flash[:error] = "The comment is not saved. Please try again!"
      redirect_to [@post.topic, @post]
    end
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])

    authorize @comment
    if @comment.destroy
      flash[:notice] = "Comment was removed."
      redirect_to [@post.topic, @post]
    else
      flash[:error] = "Comment couldn't be deleted. Try again."
      redirect_to [@post.topic, @post]
    end
  end

  protected

  def comment_params
    params.require(:comment).permit(:body)
  end
end


