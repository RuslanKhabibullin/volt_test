require "rails_helper"

describe GenerateReportDataJob do
  subject(:job) { described_class.new(email, start_date, end_date) }

  let(:action_mail) { double deliver!: true }

  let!(:user) { create :user, created_at: 5.minutes.ago }
  let(:email) { "test@email.com" }
  let(:start_date) { 1.day.ago }
  let(:end_date) { Time.current }
  let(:report_collection) { [user] }

  it "sends email" do
    expect(ReportMailer).to receive(:report_generated).with(email, report_collection) { action_mail }
    expect(action_mail).to receive(:deliver!)

    job.perform
  end
end
