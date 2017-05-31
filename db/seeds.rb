@user = User.create(email: "test@test.com" ,password: "stfstf" ,password_confirmation: "stfstf" ,first_name: "john" ,last_name: "mac")

puts 'one user created'

AdminUser.create(email: "admin@admin.com" ,password: "stfstf" ,password_confirmation: "stfstf" ,first_name: "tagreed" ,last_name: "saeed")

puts 'one admin user created'

100.times do |post|
  Post.create(date: Date.yesterday, rationale: "#{post} rationale content",user_id: @user.id,overtime_request: 2.5)
end

puts "100 post have been created"