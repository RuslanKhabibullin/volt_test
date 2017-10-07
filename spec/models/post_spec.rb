require "rails_helper"

describe Post, type: :model do
  subject(:post) { described_class.new(attributes_for(:post, author_id: author.id)) }

  let(:author) { create :user }

  it { is_expected.to respond_to :title }
  it { is_expected.to respond_to :body }
  it { is_expected.to respond_to :published_at }

  it { is_expected.to be_valid }
end
