Rails.application.routes.draw do
  devise_for :users
  get 'eventos/index'
  get 'eventos/new'
  get 'eventos/create'
  get 'eventos/delete'
  get '/home', to: 'pages#home'
  get '/info', to: 'pages#info'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
