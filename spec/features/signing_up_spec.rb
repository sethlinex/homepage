require "rails_helper"

RSpec.feature "user can sign up as admin" do
    scenario "with username and password" do

        visit "/admins/sign_up"
        fill_in "Email", with: "test@example.com"
        fill_in "Password", with: "password"
        fill_in "Password confirmation", with: "password"
        click_button "Sign up"
        expect(page).to have_content("You have signed up successfully")

    end
end