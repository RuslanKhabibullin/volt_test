require "rails_helper"
require "rspec_api_documentation/dsl"

resource "Comments" do
  include_context "current user signed in"

  subject(:response) { json_response_body }

  let(:post) { create :post, author: current_user }
  let(:comment) { attributes_for :comment }

  post "api/v1/posts/:post_id/comments" do
    parameter :body, "Comment body", required: true
    parameter :published_at, "Published at datetime(default - current datetime)"

    let(:post_id) { post.id }

    example_request "Comment create with valid data", body: "Test" do
      expect(response_status).to be 201
    end

    example_request "Comment create with invalid data" do
      expect(response.keys).to match_array ["errors"]
    end
  end
end
