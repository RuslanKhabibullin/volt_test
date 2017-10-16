require "rails_helper"
require "rspec_api_documentation/dsl"

resource "Reports" do
  subject(:response) { json_response_body }

  context "when user authorized" do
    include_context "current user signed in"

    post "api/v1/reports/by_author" do
      parameter :email, "Email", required: true
      parameter :start_date, "Start date(example: 2017-01-10)", required: true
      parameter :end_date, "End date", required: true

      example_request "Post create with valid data" do
        expect(response_status).to be 201
        expect(response["message"]).to eq "Report generation started"
      end
    end
  end

  post "api/v1/reports/by_author" do
    parameter :email, "Email", required: true
    parameter :start_date, "Start date(example: 2017-01-10)", required: true
    parameter :end_date, "End date", required: true

    example_request "Unauthorized user generate report" do
      expect(response_status).to be 401
    end
  end
end
