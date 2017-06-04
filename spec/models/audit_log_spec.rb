require 'rails_helper'

RSpec.describe AuditLog, type: :model do
before do
  @auditlog = FactoryGirl.create(:audit_log)
end
  describe 'creation' do
    it 'can be properly created' do
      expect(@auditlog).to be_valid
    end
  end

  describe 'validations' do
    it 'should be rquired to a user association' do
      @auditlog.user_id = nil
      expect(@auditlog).to_not be_valid
    end

    it 'should have a status' do
      @auditlog.status = nil
      expect(@auditlog).to_not be_valid
    end

    it 'should be rquired to a have a start date' do
      @auditlog.strat_date = nil
      expect(@auditlog).to_not be_valid  
    end

    it 'should have a start date equal to 6 days prior' do
      new_auditlog = AuditLog.create!(user_id: User.last.id)
      expect(new_auditlog.strat_date).to eq(Date.today-6.days)
    end

  end
 
end
