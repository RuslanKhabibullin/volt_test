FactoryGirl.define do
  factory :comment do
    post
    author
    body { generate(:post_body) }
  end
end
