Rails.application.routes.draw do
  get 'example/test1'
  get 'example/test2'
  get 'example/test3'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root to: 'movies#index'
  resources :movies
end
