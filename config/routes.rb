Rails.application.routes.draw do
  resources :opinions
  devise_for :users, controllers: { registrations: 'registrations' }
  devise_scope :user do
    root to: 'devise/sessions#new'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
end