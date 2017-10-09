require "rails_helper"
require "rspec_api_documentation/dsl"

resource "Avatar" do
  include_context "current user signed in"

  subject(:response) { json_response_body }

  post "api/v1/avatar" do
    parameter :avatar, "Avatar image(jpeg/png - less than 3MB)", required: true

    let(:avatar) do
      Rack::Test::UploadedFile.new(File.join(RSpec.configuration.fixture_path, "files/avatar.png"))
    end

    example_request "Avatar create" do
      expect(response_status).to be 201
      expect(response).to be_a_avatar_representation
    end
  end
end
