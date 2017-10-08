require "rails_helper"

describe ReportsQuery do
  subject(:query) { described_class.new(starts_at, ends_at) }

  let!(:john) { create :user, email: "john@email.com", nickname: "john" }
  let!(:john_new_post) { create :post, author: john }
  let!(:john_recent_post) { create :post, published_at: 10.days.ago, author: john }
  let!(:john_new_comment) { create :comment, author: john, post: john_new_post }

  let!(:bill) { create :user, email: "bill@email.com", nickname: "bill" }
  let!(:bill_post) { create :post, published_at: 20.days.ago, author: bill }

  describe "#all" do
    let(:starts_at) { 30.days.ago }
    let(:ends_at) { Time.current }

    it "returns report for given period" do
      expect(query.all).to eq([john, bill])
    end

    context "when selected another range" do
      let(:starts_at) { 11.days.ago }
      let(:ends_at) { Time.current }

      def user_from_query(expected_user)
        query.all.select { |user| user.id == expected_user.id }.first
      end

      it "returns report for given period" do
        expect(user_from_query(john).comments_count).to eq 1
        expect(user_from_query(john).posts_count).to eq 2

        expect(user_from_query(bill).comments_count).to eq 0
        expect(user_from_query(bill).posts_count).to eq 0
      end
    end
  end
end
