require 'rails_helper'

describe 'AudiLog feature' do 

  describe 'index' do
    before do
      FactoryGirl.create(:audit_log)
      admin = FactoryGirl.create(:admin_user)
      login_as(admin,:scope=>:user)

    end
    
    it 'has an index page that can be reached' do
      visit audit_logs_path 
      expect(page.status_code).to eq(200)
    end

    it 'renders audit log content' do
      visit audit_logs_path
      expect(page).to have_content(/MAC, JOHN/)
    end

    it 'cannot be accessed by non admin users' do
      logout(:user)
      user = FactoryGirl.create(:user)
      login_as(user,:scope => :user)
      visit audit_logs_path
      expect(current_path).to eq(root_path)
    end
  end
end