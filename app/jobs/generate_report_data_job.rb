GenerateReportDataJob = Struct.new(:email, :start_date, :end_date) do
  def queue_name
    "generate_report_queue"
  end

  def max_attempts
    1
  end

  def perform
    return unless email

    ReportMailer.report_generated(email, report_collection).deliver!
  end

  private

  def report_collection
    @report_collection ||= ReportsQuery.new(start_date, end_date).all
  end
end
