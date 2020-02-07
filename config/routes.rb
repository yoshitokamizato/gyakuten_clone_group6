Rails.application.routes.draw do
  root to: 'movies#index'
  resources :questions
  devise_for :admin_users, ActiveAdmin::Devise.config
  devise_for :users
  ActiveAdmin.routes(self)
end
