RSpec::Matchers.define :be_a_comment_representation do |comment|
  match do |json|
    response_attributes = comment.attributes.slice %w[body author_id post_id published_at]

    expect(json).to be
    expect(json["attributes"]).to include(response_attributes)
  end
end
