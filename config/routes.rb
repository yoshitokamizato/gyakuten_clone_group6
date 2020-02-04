Rails.application.routes.draw do
  root to: 'movies#index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  devise_for :users
  root to: 'movies#index'
  root 'questions#index'
  resources :questions
  ActiveAdmin.routes(self)
end
