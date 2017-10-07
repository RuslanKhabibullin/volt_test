require "rails_helper"
require "rspec_api_documentation/dsl"

resource "Sessions" do
  header "Accept", "application/json"

  subject(:response) { json_response_body }

  post "api/v1/sessions.json" do
    parameter :email, "Email", required: true
    parameter :password, "Password", required: true

    let(:user) { create :user }

    let(:email) { user.email }

    example_request "Sign in with valid password", password: "123456" do
      expect(response["data"]).to be_a_session_representation
    end

    example_request "Sign in with invalid password", password: "" do
      expect(response_status).to be 401
    end
  end
end
