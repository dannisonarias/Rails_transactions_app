require 'rails_helper'

RSpec.describe 'LandingPages', type: :request do
    describe 'when user is not logged in redirect to landing page', type: :feature do

    
        it 'create user' do
          visit new_user_registration_path
          fill_in 'user[name]', with: 'danny arias'
          fill_in 'user[email]', with: 'dannyarias@gmail.com'
          fill_in 'user[password]', with: 'testing123'
          fill_in 'user[password_confirmation]', with: 'testing123'
          attach_file 'user[image]', 'app/assets/images/category icons/school.png'
          click_button(name: 'commit')
          expect(page).to have_content 'You have signed up successfully'
        end
      end
end
