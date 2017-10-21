Rails.application.routes.draw do
  resources :family_members
  devise_for :users
  root to: 'home#index'
end
