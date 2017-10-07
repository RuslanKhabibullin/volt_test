FactoryGirl.define do
  sequence(:email) { Faker::Internet.email }
  sequence(:nickname) { Faker::Name.name }
  sequence(:post_title) { Faker::Lorem.sentence }
  sequence(:post_body) { Faker::Lorem.sentence }
end
