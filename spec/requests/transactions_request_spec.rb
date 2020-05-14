require 'rails_helper'

RSpec.describe 'Transactions', type: :request do
  before(:each) do
  end
  describe 'create transactions for users', type: :feature do
    it 'create transaction' do
      visit new_user_registration_path
      fill_in 'user[name]', with: 'danny arias'
      fill_in 'user[email]', with: 'dannyarias@gmail.com'
      fill_in 'user[password]', with: 'testing123'
      fill_in 'user[password_confirmation]', with: 'testing123'
      attach_file 'user[image]', 'app/assets/images/category-icons/school.png'
      click_button(name: 'commit')

      visit '/users/1/transactions/new'
      fill_in 'transaction[name]', with: 'pizza'
      fill_in 'transaction[amount]', with: '50'
      click_button(name: 'commit')
      visit '/users/1/transactions?category=0'
      expect(page).to have_css('.money')
    end
  end
end
