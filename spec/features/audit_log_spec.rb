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
  end
end