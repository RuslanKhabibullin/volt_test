require "rails_helper"

describe Comment, type: :model do
  subject(:comment) do
    described_class.new(attributes_for(:comment, author_id: author.id, post_id: post.id))
  end

  let(:author) { create :user }
  let(:post) { create :post }

  it { is_expected.to respond_to :author }
  it { is_expected.to respond_to :post }
  it { is_expected.to respond_to :body }
  it { is_expected.to respond_to :published_at }

  it { is_expected.to be_valid }
end
