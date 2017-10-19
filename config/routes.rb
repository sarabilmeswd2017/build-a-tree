Rails.application.routes.draw do
  get 'family_members/index'

  get 'family_members/new'

  get 'family_members/create'

  get 'family_members/show'

  get 'family_members/edit'

  get 'family_members/delete'

  devise_for :users
  root to: 'home#index'
end
