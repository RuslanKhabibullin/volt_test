FactoryGirl.define do
  factory :post do
    title { generate(:post_title) }
    body { generate(:post_body) }
    author
  end
end
