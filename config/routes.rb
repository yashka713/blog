Rails.application.routes.draw do
  resources :posts
  resources :post
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'posts#index'
end
