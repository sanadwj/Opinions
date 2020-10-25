require 'rails_helper'

RSpec.describe 'Testing follower behavior' do
  before :each do
    @user1 = User.create(name: 'adam', email: 'test1@test.com', password: '123456', id: 1)
    @user2 = User.create(name: 'john', email: 'test2@test.com', password: '123456', id: 2)
    @user3 = User.create(name: 'mike', email: 'test3@test.com', password: '123456', id: 3)
    @user1.followers.create(confirmed: true, user_id: 1, follower_id: 2)
    @user2.followers.create(confirmed: true, user_id: 2, follower_id: 1)
    @user3.followers.create(confirmed: true, user_id: 3, follower_id: 1)
  end
  feature 'User can' do
    scenario 'visit profile' do
      visit '/users/sign_in'
      fill_in 'Email', with: 'test1@test.com'
      fill_in 'Password', with: '123456'
      click_button 'Log in'
      visit '/users/1'
      expect(page).to have_content('john')
      expect(page).to have_content('mike')
    end
  end
end