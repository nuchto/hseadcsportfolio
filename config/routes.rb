Rails.application.routes.draw do

  get 'pages/home'
  devise_for :users
  resources :members
  resources :projects
  resources :portraits
  resources :people
  resources :groups
  resources :posts
  root 'groups#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
