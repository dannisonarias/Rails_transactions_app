require 'rails_helper'

RSpec.describe 'LandingPages', type: :request do
  describe 'when user is not logged in redirect to landing page', type: :feature do
    it 'create user' do
      visit groups_path
      expect(page).to have_content 'You need to sign in or sign up'
    end
  end
end
