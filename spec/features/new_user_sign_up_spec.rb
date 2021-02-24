RSpec.describe "new user sign up", type: :system  do
    scenario "with valid email and password" do
        visit new_user_registration_path
        fill_in 'user_email', with: 'jchepyego@gmail.com'
        fill_in 'user_password', with: 'jemimah21'
        fill_in 'user_password_confirmation', with: 'jemimah21'
        click_button 'Sign up'

        expect(page).to have_content('Welcome! You have signed up successfully.')


    end

    scenario " with invalid email" do 
        visit new_user_registration_path
        fill_in 'user_email', with: 'invalid email'
        fill_in 'user_password', with: 'jemimah21'
        fill_in 'user_password_confirmation', with: 'jemimah21'
        click_button 'Sign up'

        expect(page).to have_content('sign up')

    end

    scenario " when user does not confirm password" do 
        visit new_user_registration_path
        fill_in 'user_email', with: 'jchepyego@gmail'
        fill_in 'user_password', with: 'jemimah21'
        fill_in 'user_password_confirmation', with: ' '
        click_button 'Sign up'


        expect(page).to have_content("Password confirmation doesn't match Password")
 
    end

    
end
