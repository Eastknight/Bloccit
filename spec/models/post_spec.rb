require 'rails_helper'

describe Post do

  describe "vote methods" do

    before do
      @post = create(:post)
      3.times { @post.votes.create(value: 1) }
      2.times { @post.votes.create(value: -1) }
    end

    describe '#up_votes' do 
      it "counts the number of votes with value = 1" do
        expect( @post.up_votes ).to eq(3)
      end
    end

    describe '#down_votes' do
      it "count the number of votes with value = -1" do
        expect( @post.down_votes ).to eq(2)
      end
    end

    describe '#points' do
      it "returns the sum of all down and up votes" do
        expect( @post.points ).to eq(1) # 3 - 2
      end
    end


#Why can't I put the code here?
    # describe '#create_vote' do 
    #   it "generates an up-votes when explicitly called" do
    #     post = associated_post
    #     expect( post.up_votes ).to eq(0)
    #     post.create_vote
    #     expect( post.up_votes ).to eq(1)
    #   end
    # end
  end
  describe '#create_vote' do
    it "generates an up-vote when explicitly called" do
      post = create(:post)
      expect( post.up_votes ).to eq(0)
      post.create_vote
      expect( post.up_votes ).to eq(1)
    end
  end
end


# def associated_post
#    user = authenticated_user
#    topic = Topic.create(name: 'Topic name')
#    Post.create(title: 'Post title', body: 'Post bodies must be pretty long', topic: topic, user: user)
# end
# def authenticated_user
#      user = User.new(email: "email#{rand}@fake.com", password: 'password')
#      user.skip_confirmation!
#      user.save
#      user
# end













