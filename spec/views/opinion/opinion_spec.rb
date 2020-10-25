require 'rails_helper'

RSpec.describe 'Test to verify if the users opinions' do
  before :each do
    @user1 = User.create(name: 'adam', email: 'test1@test.com', password: '123456', id: '1')
    @user2 = User.create(name: 'john', email: 'test2@test.com', password: '123456', id: '2')
    @user2 = User.create(name: 'mike', email: 'test3@test.com', password: '123456', id: '3')
    Opinion.create(user_id: 1, body: 'Adam Opinion')
    Opinion.create(user_id: 2, body: 'John Opinion')
    Opinion.create(user_id: 3, body: 'Mike Opinion')
  end
  feature 'User can see other users opinions' do
    scenario 'sign in and go to opinion index' do
      visit '/users/sign_in'
      fill_in 'Email', with: 'test1@test.com'
      fill_in 'Password', with: '123456'
      click_button 'Log in'
      expect(page).to have_content('John Opinion')
      expect(page).to have_content('Mike Opinion')
    end
  end

  feature 'User can create opinion' do
    scenario 'sign in and go to opinion index' do
      visit '/users/sign_in'
      fill_in 'Email', with: 'test1@test.com'
      fill_in 'Password', with: '123456'
      click_button 'Log in'
      visit '/users/1'
      expect(page).to have_content('Adam Opinion')
    end
  end
end