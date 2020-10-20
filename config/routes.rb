Rails.application.routes.draw do
  

  
  resources :elevators
  resources :batteries
  resources :customers
  resources :addresses

  resources :columns
  resources :building_details
  resources :buildings
  resource :quotes
  resource :leads

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#index'

  get 'quote' => 'quotes#quote'
  # get 'address' => 'addresses#address'
  # get 'customer' => 'customer#customer'
  get 'corporate' => 'pages#corporate'
  get 'residential' => 'pages#residential'
  get 'index' => 'pages#index'

  post 'quote/create' => 'quotes#create'
  post 'contact/create' => 'leads#create'
end

