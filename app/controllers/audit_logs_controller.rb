class AuditLogsController < ApplicationController
  def index
    @audit_logs = AuditLog.first
  end
end
