RSpec::Matchers.define :be_a_avatar_representation do
  match do |data|
    expect(data).to be
    expect(data).to include("url", "thumb")
    expect(data["thumb"]).to have_key("url")
  end
end
