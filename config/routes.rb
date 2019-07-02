Rails.application.routes.draw do
  devise_for :users

  get 'eventos/index'
  #get 'eventos/new'
  #get 'eventos/create'
  #post 'eventos/create'
  post 'eventos/create_evento'
  #post 'eventos/find'
  get 'eventos/delete'
  #get '/info', to: 'pages#info'
  root to: 'eventos#index'

  #resources :eventos


  get 'index', to: 'eventos#index'
  get 'new', to: 'eventos#new'
  post 'find', to: 'eventos#find'
  #get 'create', to: 'eventos#create'
  #get 'delete', to:'eventos#delete'
  get 'info', to: 'pages#info'
  #root to: 'eventos#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
