require 'rails_helper'

RSpec.describe "Groups", type: :request do
    before(:each) do

      end
      describe 'the sign up process', type: :feature do

        before :each do
          visit new_user_path
        end
    
        it 'create user' do
          visit new_user_registration_path
          fill_in 'user[name]', with: 'danny arias'
          fill_in 'user[email]', with: 'dannyarias@gmail.com'
          fill_in 'user[password]', with: 'testing123'
          fill_in 'user[password_confirmation]', with: 'testing123'
          attach_file "user[image]", "app/assets/images/category icons/school.png"
          click_button(name: 'commit')
          expect(page).to have_content 'You have signed up successfully'
        end

      end

end
