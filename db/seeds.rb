@employee = Employee.create!(email: "employee@dev.com" ,
  password: "asdfasdf" ,
  password_confirmation: "asdfasdf" ,
  first_name: "john" ,
  last_name: "mac",
  phone: "1312948956")

puts '1 employee created'

AdminUser.create!(email: "admin@dev.com" ,
  password: "asdfasdf" ,
  password_confirmation: "asdfasdf" ,
  first_name: "tagreed" ,
  last_name: "saeed",
  phone: "1312948956")

puts '1 admin user created'

AuditLog.create!(user_id: @employee.id,status: 0,strat_date: (Date.today - 6.days))
AuditLog.create!(user_id: @employee.id,status: 0,strat_date: (Date.today - 13.days))
AuditLog.create!(user_id: @employee.id,status: 0,strat_date: (Date.today - 20.days))


puts "3 audit logs have been created"


10.times do |post|
  Post.create!(date: Date.yesterday, rationale: "#{post} Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum",user_id: @employee.id,overtime_request: 2.5)
end

puts "10 post have been created"


