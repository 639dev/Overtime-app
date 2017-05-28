FactoryGirl.define do
  sequence :email do |n|
    "test#{n}@example.com"
  end
end

FactoryGirl.define do
  factory :user do
    first_name 'John'
    last_name 'Mac'
    email {generate :email}
    password 'stfstf'
    password_confirmation 'stfstf'
  end
end

FactoryGirl.define do
  factory :admin_user, class: "AdminUser" do
    first_name 'Admin'
    last_name 'User'
    email {generate :email}
    password 'stfstf'
    password_confirmation 'stfstf'
  end
end