FactoryGirl.define do

  sequence :email do |n|
    "test#{n}@example.com"
  end



  factory :user do
    first_name 'John'
    last_name 'Mac'
    email {generate :email}
    password 'stfstf'
    password_confirmation 'stfstf'
    phone "1234567890"
  end



  factory :admin_user, class: "AdminUser" do
    first_name 'Admin'
    last_name 'User'
    email {generate :email}
    password 'stfstf'
    password_confirmation 'stfstf'
    phone "1234567890"
end



  factory :non_authorized_user,class: "User" do
    first_name 'Non'
    last_name 'Authorized'
    email {generate :email}
    password 'stfstf'
    password_confirmation 'stfstf'
    phone "1234567890"
  end


end