require "rails_helper"
require "rspec_api_documentation/dsl"

resource "Posts" do
  include_context "current user signed in"

  subject(:response) { json_response_body }

  let(:post) { create :post, author: current_user }

  get "api/v1/posts/:id" do
    let(:id) { post.id }

    example_request "Post show" do
      expect(response_status).to be 200
      expect(response["data"]).to be_a_post_representation(post)
    end
  end
end
