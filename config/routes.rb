Rails.application.routes.draw do
  resources :questions, only: %i(index create show)
  resources :aws_texts, only: %i(index show)
  resources :movies, only: %i(index)
  resources :solutions, only: :create
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  devise_for :users

  get 'movies/index'
  root to: 'movies#index'
end
