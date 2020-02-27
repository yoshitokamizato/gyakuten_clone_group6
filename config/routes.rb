Rails.application.routes.draw do
  root to: 'movies#index'
  resources :questions
  resources :solutions 
  devise_for :admin_users, ActiveAdmin::Devise.config
  devise_for :users
  ActiveAdmin.routes(self)
end
