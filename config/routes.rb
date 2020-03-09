Rails.application.routes.draw do
  root to: 'movies#index'
  resources :php_lectures, only: [:index]
  resources :conversations, only:[:index]
  resources :informations, only:[:index]
  resources :video_edits, only:[:index]
  resources :writings, only:[:index]
  resources :aws_lectures,only:[:index, :show]
  resources :lines,only:[:index, :show]
  resources :questions
  resources :questions do
    resources :solutions, only: :create
  end
  devise_for :admin_users, ActiveAdmin::Devise.config
  devise_for :users
  ActiveAdmin.routes(self)
end
