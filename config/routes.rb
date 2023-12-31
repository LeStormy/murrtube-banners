Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'application#index'
  resources :submissions

  get 'submitted', to: 'submissions#submitted'
end
