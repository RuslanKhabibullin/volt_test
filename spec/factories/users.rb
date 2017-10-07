FactoryGirl.define do
  factory :user, aliases: %i[author] do
    email
    password "123456"
    nickname
  end
end
