Rails.application.routes.draw do
  devise_for :users
  get 'eventos/index'
  get 'eventos/new'
  get 'eventos/create'
  get 'eventos/delete'
  get '/info', to: 'pages#info'
  root to: 'eventos#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
