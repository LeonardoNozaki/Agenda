Rails.application.routes.draw do
  devise_for :users
  get 'eventos/index'
  get 'eventos/new'
  #get 'eventos/create'
  #post 'eventos/create'
  post 'eventos/create_evento'
  post 'eventos/find'
  get 'eventos/delete'
  #get '/info', to: 'pages#info'
  root to: 'pages#home'

  #resources :eventos

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
