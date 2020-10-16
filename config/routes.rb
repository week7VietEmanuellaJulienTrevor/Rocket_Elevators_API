Rails.application.routes.draw do
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#index'
  get 'index' => 'pages#index'

  get 'residential' => 'pages#residential'
  get 'quote' => 'pages#quote'
  get 'corporate' => 'pages#corporate'
end

