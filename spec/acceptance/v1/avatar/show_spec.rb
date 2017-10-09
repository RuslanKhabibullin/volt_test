require "rails_helper"
require "rspec_api_documentation/dsl"

resource "Avatar" do
  include_context "current user signed in"

  subject(:response) { json_response_body }

  let(:avatar) do
    Rack::Test::UploadedFile.new(File.join(RSpec.configuration.fixture_path, "files/avatar.png"))
  end

  before { current_user.update(avatar: avatar) }

  get "api/v1/avatar" do
    example_request "Get current user avatar" do
      expect(response).to be_a_avatar_representation
    end
  end
end
