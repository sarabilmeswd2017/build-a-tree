Rails.application.routes.draw do
  resources :families
  resources :family_members
  devise_for :users
  root to: 'home#index'
end
