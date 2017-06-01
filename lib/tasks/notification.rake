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

end
