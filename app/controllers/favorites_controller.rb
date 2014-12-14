class FavoritesController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    favorite = current_user.favorites.build(post: @post)

    authorize favorite

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
    favorite = current_user.favorites.find(params[:post_id])

    authorize favorite

    if favorite.destroy
      flash[:notice] = "You've unfavorited this post."
      redirect_to [@post.topic, @post]
    else
      flash[:error] = "An error occured, please try again."
      redirect_to [@post.topic, @post]
    end

  end
end
