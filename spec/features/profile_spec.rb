require 'rails_helper'

describe "Visiting profiles" do

  before do 
    @user = create(:user)
    @post = create(:post, user: @user)
    @comment = create(:comment, user: @user, post: create(:post), body: "A Comment")
  end

  describe "not signed in" do
    it "shows profile" do
      visit user_path(@user)
      expect(current_path).to eq(user_path(@user))

      expect( page ).to have_content(@user.name)
      expect( page ).to have_content(@post.title)
      expect( page ).to have_content(@comment.body)
    end
  end
end
