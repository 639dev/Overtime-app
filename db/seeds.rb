@user = User.create(email: "test@test.com" ,password: "stfstf" ,password_confirmation: "stfstf" ,first_name: "john" ,last_name: "mac")

puts 'one user created'

100.times do |post|
  Post.create(date: Date.today, rationale: "#{post} rationale content",user_id: @user.id)
end

puts "100 post have been created"