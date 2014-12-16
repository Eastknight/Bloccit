class CommentsController < ApplicationController

  respond_to :html, :js

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params) 
    authorize @comment
    @comment.user_id = current_user.id
    @new_comment = Comment.new 
    authorize @new_comment

    if @comment.save
      flash[:notice] = "Comment posted!"
    else
      flash[:error] = "The comment is not saved. Please try again!"
    end

    respond_with(@comment) do |format|
      format.html { redirect_to [@post.topic, @post] }
    end
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])

    authorize @comment
    if @comment.destroy
      flash[:notice] = "Comment was removed."
    else
      flash[:error] = "Comment couldn't be deleted. Try again."
    end

    respond_with(@comment) do |format|
      format.html { redirect_to [@post.topic, @post] }
    end
  end

  protected

  def comment_params
    params.require(:comment).permit(:body)
  end
end


