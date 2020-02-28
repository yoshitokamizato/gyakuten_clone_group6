Rails.application.routes.draw do
  root to: 'movies#index'
  resources :aws_lectures
  namespace :admin do
    resources :aws_lectures
  end
  resources :questions
  resources :questions do
    resources :solutions, only: :create
  end
  devise_for :admin_users, ActiveAdmin::Devise.config
  devise_for :users
  ActiveAdmin.routes(self)
end
