5.times { FactoryGirl.create(:user, :with_posts) }
User.find_each do |user|
  FactoryGirl.create_list(:comment, rand(1..5), post: Post.first)
end
