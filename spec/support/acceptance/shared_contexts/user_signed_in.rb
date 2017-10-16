shared_context "current user signed in" do
  let(:current_user) { create :user }
  let(:token) { JWT::Wrapper.encode(JWT::Payload.payload_for(current_user)) }

  before { header "Authorization", "Bearer #{token}" }
end
