FactoryGirl.define do
  sequence(:email) { Faker::Internet.email }
  sequence(:nickname) { Faker::Name.name }
end
