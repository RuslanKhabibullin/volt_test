require "rails_helper"
require "rspec_api_documentation/dsl"

resource "Users" do
  subject(:response) { json_response_body }

  let(:user) { attributes_for :user }

  post "api/v1/users" do
    parameter :email, "Email", required: true
    parameter :password, "Password", required: true
    parameter :nickname, "Nickname", required: true

    let(:email) { user[:email] }
    let(:password) { user[:password] }

    example_request "Registration with valid data", nickname: "John" do
      expect(response_status).to eq 201
    end

    example_request "Registration with invalid data" do
      expect(response.keys).to match_array ["errors"]
    end
  end
end
