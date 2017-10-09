require "rails_helper"

feature "Avatar upload", js: true do
  let!(:user) { create :user, email: "test@email.com", password: "123456" }

  scenario "user can upload avatar" do
    visit root_path

    fill_in "Email", with: user.email
    fill_in "Password", with: "123456"
    attach_file "Avatar", File.join(RSpec.configuration.fixture_path, "files", "avatar.png")
    click_button "Submit"

    expect(page).to have_content("Your avatar")
    expect(user.reload.avatar).not_to be_falsey
  end
end
