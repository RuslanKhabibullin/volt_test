require "rails_helper"
require "rspec_api_documentation/dsl"

resource "Posts" do
  subject(:response) { json_response_body }

  let(:post) { attributes_for :post }

  context "when user authorized" do
    include_context "current user signed in"

    post "api/v1/posts" do
      parameter :title, "Post title", required: true
      parameter :body, "Post body", required: true
      parameter :published_at, "Published at datetime(default - current datetime)"

      let(:title) { post[:title] }

      example_request "Post create with valid data", body: "Test" do
        expect(response_status).to be 201
      end

      example_request "Post create with invalid data" do
        expect(response.keys).to match_array ["errors"]
      end
    end
  end

  post "api/v1/posts" do
    parameter :title, "Post title", required: true
    parameter :body, "Post body", required: true
    parameter :published_at, "Published at datetime(default - current datetime)"

    let(:title) { post[:title] }

    example_request "Unauthorized user create post", body: "Test" do
      expect(response_status).to be 401
    end
  end
end
