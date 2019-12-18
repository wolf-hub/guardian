Rails.application.routes.draw do
  
  resources :custodians
  resources :people
  resources :states
  resources :ages
  resources :relationships
  resources :spouses
  resources :children
  devise_for :users
  root to: 'main#index'
   resources :details, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
