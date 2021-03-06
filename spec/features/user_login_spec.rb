# require 'rails_helper'
# require 'spec_helper'



RSpec.describe " user login ", type: :feature do
  let(:user) { create(:user) }
    scenario "with correct password and email" do
      visit new_user_session_path
      fill_in 'user_email', with: user.email
      fill_in 'user_password', with: user.password
      click_button 'Log in'
      expect(page).to have_content("Signed in successfully.")
        
    end

    scenario "with wrong password and correct email" do
      visit new_user_session_path
      fill_in 'user_email', with: Faker::Internet.email
      fill_in 'user_password', with: 'jemimah21'
      click_button 'Log in'

      expect(page).to have_content("Invalid Email or password.")
  end

    scenario "with wrong password and wrong email" do
      visit new_user_session_path
      fill_in 'user_email', with: 'jem@example.com'
      fill_in 'user_password', with: 'jemimah21'
      click_button 'Log in'

      expect(page).to have_content("Invalid Email or password.")
    end



        




   


end