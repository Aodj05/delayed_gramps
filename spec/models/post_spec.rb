require 'rails_helper'

RSpec.describe Post, type: :model do
  it { is_expected.to have_many(:likes) }

  describe "#like!" do
    it "creates a record in the db" do
      user = create(:user)
      post = create(:post, user_id: user.id)

      expect do
        post.like!(user)
      end.to change { post.likes.count }.from(0).to(1)
    end
  end

  describe "#liked?" do
    it "return true if user liked the post" do
      user = create(:user)
      post = create(:post, user_id: user.id)
      post.like!(user)
      expect(post.liked?(user)).to eq(true)
    end

    it "returns false if user did not like the post" do
      user = create(:user)
      post = create(:post, user_id: user.id)

      user2 = create(:user)
      post.like!(user2)
      expect(post.liked?(user)).to eq(false)
    end
  end

  describe "#likes" do
    it "returns the number of likes" do
      user = create(:user)
      liked_post = create(:post, user_id: user.id)
      unliked_post = create(:post, user_id: user.id)
      Like.create!(post_id: liked_post.id, user_id: user.id)

      expect(liked_post.likes.count).to eq(1)
      expect(unliked_post.likes.count).to eq(0)
    end
  end
end
