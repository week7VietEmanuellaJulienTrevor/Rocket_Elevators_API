Rails.application.routes.draw do
  
  resources :customers
  resources :addresses
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#index'

  resource :quotes 

  get 'quote' => 'quotes#quote'
  # get 'address' => 'addresses#address'
  # get 'customer' => 'customer#customer'
  get 'corporate' => 'pages#corporate'
  get 'residential' => 'pages#residential'
  get 'index' => 'pages#index'

  post 'create' => 'quotes#create'

end

