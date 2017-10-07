require "rails_helper"

describe PaginatedResourceQuery do
  subject(:query) { described_class.new(Post.all, pagination_params) }

  let!(:new_post) { create :post }
  let!(:recent_post) { create :post, published_at: 1.day.ago }
  let!(:old_post) { create :post, published_at: 1.month.ago }

  describe "#all" do
    context "with params set to nil" do
      let(:pagination_params) { {} }

      it "returns all posts sorted by published_at" do
        expect(query.all).to eq([new_post, recent_post, old_post])
      end
    end

    context "with page params" do
      let(:pagination_params) { { page: 1 } }

      it "returns sorted posts on selected page" do
        expect(query.all).to eq([new_post, recent_post, old_post])
      end
    end

    context "with page and per_page params" do
      let(:pagination_params) { { page: 2, per_page: 1 } }

      it "returns paginated sorted posts" do
        expect(query.all).to eq([recent_post])
      end
    end
  end
end
