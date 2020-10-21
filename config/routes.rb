Rails.application.routes.draw do

  resources :followers
  devise_for :users
  devise_scope :user do
    root to: 'devise/sessions#new'

  end



  resources :users, only: [:index, :show] do
    resources :opinions
    resources :followers, only: [:create, :destroy]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


end
