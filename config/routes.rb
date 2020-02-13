Rails.application.routes.draw do
  devise_for :aws_lessons
  root to: 'movies#index'
  resources :questions
  devise_for :admin_users, ActiveAdmin::Devise.config
  devise_for :users
  ActiveAdmin.routes(self)
end
