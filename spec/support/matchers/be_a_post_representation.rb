RSpec::Matchers.define :be_a_post_representation do |post|
  match do |json|
    response_attributes = post.attributes.slice %w[title body published_at]
    response_attributes["author_nickname"] = post.author.nickname

    expect(json).to be
    expect(json["attributes"]).to include(response_attributes)
  end
end
