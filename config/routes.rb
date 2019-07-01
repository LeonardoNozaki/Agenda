Rails.application.routes.draw do
  devise_for :users
  get 'index', to: 'eventos#index'
  get 'new', to: 'eventos#new'
  get 'create', to: 'eventos#create'
  get 'delete', to:'eventos#delete'
  get 'info', to: 'pages#info'
  root to: 'eventos#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
