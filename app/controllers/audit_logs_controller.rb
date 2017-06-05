class AuditLogsController < ApplicationController
  def index
    @audit_logs = AuditLog.first
    authorize @audit_logs
  end
end
