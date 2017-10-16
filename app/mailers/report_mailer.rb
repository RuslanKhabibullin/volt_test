class ReportMailer < ApplicationMailer
  def report_generated(email, report_collection)
    @report_collection = report_collection
    mail(to: email, subject: "Volt report generated")
  end
end
