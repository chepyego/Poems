# require 'rails_helper'
# require 'spec_helper'

RSpec.describe " user login ", type: :feature do
    scenario "with correct password and email" do
        visit new_user_session_path
        @user = create(:user)

        fill_in 'user_email', with: 'test@example.com'
        fill_in 'user_password', with: 'password1'
        click_button 'Log in'

        
        expect(page).to have_content("Signed in successfully.")
        


    end

    scenario "with wrong password and correct email" do
        visit new_user_session_path
        @user = create(:user)
        fill_in 'user_email', with: 'test@example.com'
        fill_in 'user_password', with: 'jemimah21'

        click_button 'Log in'

        expect(page).to have_content("Forgot your password?")
    end

    scenario "with wrong password and wrong email" do
        visit new_user_session_path
        @user = create(:user)
        fill_in 'user_email', with: 'jem@example.com'
        fill_in 'user_password', with: 'jemimah21'

        click_button 'Log in'

        expect(page).to have_content("Sign up")
    end



        




   


end