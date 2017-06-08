namespace :notification do
  desc "sends sms notification to employees asking them to log if they have overtime"
  task sms: :environment do
    # 1. Scheduele to run at sunday at 5pm.
    # 2. Iterate over all employees.
    # 3. Skip admin users.
    # 4. Send a message that has instructions and a link to log time.
    #User.all.each do |user|
    #  SmsTool.send_sms(number: 0000)
    #end
    
  end





  desc "Sends mail notificatio each day to inform of pending overtime request"
  task manager_email: :environment do
    # 1. Iterate over the list of pending overtime requests
    # 2. Check to see if there are any requests
    # 3. Iterate over the lists of admins user/manager
    # 4. send the email to each admin
    submitted_posts = Post.submitted
    admin_users = AdminUser.all

    if submitted_posts.count > 0
      admin_users.each do |admin|
        ManagerMailer.email(admin).deliver_now
      end
    end

  end



end
