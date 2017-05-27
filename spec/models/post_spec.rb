require 'rails_helper'

RSpec.describe Post, type: :model do
  before do
    @user = User.create(email: "test@test.com" ,password: "stfstf" ,password_confirmation: "stfstf" ,first_name: "John" ,last_name: "Mac")
  end

  describe "creation" do
    before do
      @post = Post.create(date: Date.today , rationale: "anything")
    end
    it "can be created" do
      expect(@post).to_not be_valid
    end

    it "cannot be created without date and rationale" do
      @post.date = nil
      @post.rationale = nil
      expect(@post).to_not be_valid
    end
  end

  describe 'custom name methods' do
    it 'has a full name method that combines first and last name' do
      expect(@user.full_name).to eq('MAC, JOHN')
    end
  end
end
