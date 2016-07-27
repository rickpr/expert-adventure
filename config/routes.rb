Rails.application.routes.draw do
  root 'home#index'
  get 'unauthorized' => 'home#unauthorized'

  get 'home/license'

  resources :phase_roles
  resources :phases
  resources :sections
  resources :role_policies
  resources :recusals
  resources :uploads
  resources :divisions
  resources :departments
  resources :units
  resources :branches
  resources :colleges
  resources :schools
  resources :roles
  resources :user_roles
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
