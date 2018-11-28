Rails.application.routes.draw do
  resources :members
  resources :projects
  resources :portraits
  resources :people
  resources :groups
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
