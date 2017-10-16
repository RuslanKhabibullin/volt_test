require "rails_helper"

describe ReportMailer do
  describe "#report_generated" do
    subject { described_class.report_generated(email, report_collection) }

    let(:email) { "test@email.com" }
    let(:report) do
      double("Report", email: "some_user@email.com", nickname: "John", posts_count: 1, comments_count: 1)
    end
    let(:report_collection) { [report] }

    it { is_expected.to deliver_to("test@email.com") }
  end
end
