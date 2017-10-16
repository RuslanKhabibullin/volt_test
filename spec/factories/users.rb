FactoryGirl.define do
  factory :user, aliases: %i[author] do
    email
    password "123456"
    nickname

    trait :with_posts do
      after(:create) do |user|
        create_list :post, rand(2..5), author: user
      end
    end
  end
end
