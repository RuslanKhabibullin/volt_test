RSpec::Matchers.define :be_a_session_representation do
  match do |data|
    expect(data).to be
    expect(data["attributes"]).to include("access_token", "token_type")
  end
end
