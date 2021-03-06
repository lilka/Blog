Rails.application.routes.draw do
  resources :comments
  resources :users, only:[:new,:create]
  resources :posts
  resources :sessions, only:[:new, :create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'posts#index'
end
