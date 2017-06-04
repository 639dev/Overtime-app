class AuditLog < ApplicationRecord
  belongs_to :user

  validates_presence_of :user_id,:status,:strat_date

  after_initialize :set_defaults

  private 
  def set_defaults
    self.strat_date ||= Date.today - 6.days
  end
end
