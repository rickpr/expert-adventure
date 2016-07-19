Rails.application.routes.draw do
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
