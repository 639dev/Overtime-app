require 'rails_helper'

describe 'homepage' do 

  it 'allows the admin to approve posts from homepage' do
    post = FactoryGirl.create(:post)
    admin = FactoryGirl.create(:admin_user)
    login_as(admin,:scope => :user)
    visit root_path

    click_on("approve_#{post.id}")

    expect(post.reload.status).to eq('approved')

  end
  
end