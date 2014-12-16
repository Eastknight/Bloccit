require 'rails_helper'

describe Comment do 

  describe "after_create" do

    before do
      @post = create(:post)
      @user = create(:user)
      @comment = create(:comment, post: @post, user: @user)
    end

    context "with user's permission" do

      it "sends an email to users who have favorited the post" do
        @user.favorites.where(post: @post).create

        allow( FavoriteMailer )
          .to receive(:new_comment)
          .with(@user, @post, @comment)
          .and_return( double(deliver: true))


        @comment.save
      end

      it "does not send emails to users who havn't " do 
        expect( FavoriteMailer )
          .not_to receive(:new_comment)

        @comment.save
      end
    end

    context "without permission" do
 
      before { @user.update_attribute(:email_favorites, false) }
 
      it "does not send emails, even to users who have favorited" do
        @user.favorites.where(post: @post).create
 
        expect( FavoriteMailer )
          .not_to receive(:new_comment)
         
        @comment.save
      end
    end
  end
end