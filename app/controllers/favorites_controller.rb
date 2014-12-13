class FavoritesController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    favorite = current_user.favorites.build(post: @post)

    if favorite.save
      flash[:notice] = "You've favorited this post."
      redirect_to [@post.topic, @post]
    else
      flash[:error] = "An error occured, please try again."
      redirect_to [@post.topic, @post]
    end
  end

  def destroy
    @post = Post.find(params[:post_id])
    favorite = current_user.favorites.where(post_id: @post.id).first

    if favorite.destroy
      flash[:notice] = "You've unfavorited this post."
      redirect_to [@post.topic, @post]
    else
      flash[:error] = "An error occured, please try again."
      redirect_to [@post.topic, @post]
    end

  end
end
