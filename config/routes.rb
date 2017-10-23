Rails.application.routes.draw do
  devise_for :users
  resources :families do
    resources :family_members, except: [:index]
  end

  root to: 'home#index'
end
