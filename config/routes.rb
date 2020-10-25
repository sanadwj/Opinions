# frozen_string_literal: true

Rails.application.routes.draw do
  resources :followers
  devise_for :users
  devise_scope :user do
    root to: 'devise/sessions#new'
  end

  resources :users, only: %i[index show create] do
    resources :followers, only: %i[create destroy]
  end
  resources :opinions
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  delete 'reject', to: 'followers#reject'
end
