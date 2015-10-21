require 'rails_helper'

RSpec.describe 'AdminUsers', type: :request do
  describe 'GET /admin' do
    it 'redirect to login page' do
      get admin_root_path
      expect(response).to redirect_to new_admin_user_session_path
    end
  end

  describe 'GET /admin/login' do
    it 'can login' do
      visit new_admin_user_session_path
      fill_in 'Email', with: 'admin@example.com'
      fill_in 'Password', with: 'password'

      click_button 'Login'

      expect(page).to have_current_path admin_root_path
    end
  end
end
