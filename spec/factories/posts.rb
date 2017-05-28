FactoryGirl.define do
  factory :post do
    date Date.today
    rationale "...."
    user
  end
end

FactoryGirl.define do
  factory :second_post, class: "Post" do
    date Date.yesterday
    rationale "content"
    user
  end
end