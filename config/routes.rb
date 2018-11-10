Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :posts
  root 'blogs#index'
  root 'posts#index'
  get 'blogs/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
