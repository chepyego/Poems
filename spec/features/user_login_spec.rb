# require 'rails_helper'
require 'spec_helper'

RSpec.describe 'User login', type: :feature do
    scenario 'with valid email and password' do
        visit user_session_path
        
        login_with 'valid@example.com', 'password'
        
        expect(page).to have_content('logout')
    end

    scenario 'with invalid email' do
        login_with 'inavalid_email', 'password'
        expect(page).to have_content('sign in')
    end
    scenario 'with invalid password' do
        login_with 'valid@example.com','invalid_password' 
        expect(page).to have_content('sign in')
    end

    def login_with(email, password)
        visit root_path
        fill_in "email",	with: email
        fill_in "password", with: password 
        click_button 'login'
    end

end