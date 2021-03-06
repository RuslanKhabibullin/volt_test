require "rails_helper"
require "rspec_api_documentation/dsl"

resource "Posts" do
  include_context "current user signed in"

  subject(:response) { json_response_body }

  let!(:post) { create :post, author: current_user }

  get "api/v1/posts?page=:page&per_page=:per_page" do
    let(:page) { 1 }
    let(:per_page) { 1 }
    let(:pagination_headers) do
      {
        "Pagination-Pages" => 1,
        "Pagination-Entries" => 1
      }
    end

    example_request "Get posts" do
      expect(response_headers).to include(pagination_headers)
      expect(response_status).to be 200
      expect(response["data"].first).to be_a_post_representation(post)
    end
  end
end
