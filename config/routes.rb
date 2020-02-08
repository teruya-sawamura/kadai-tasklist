Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'users/new'
  get 'users/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # トップページのルーティング
  root to: "tasks#index"
  
  #ログイン用ルーティング
  get "login", to: "sessions#new"
  post 'login', to: 'sessions#create'
  delete "logout", to: "sessions#destroy"
  
  #ユーザ登録用ルーティング
  get "signup", to: "users#new"

  
  #USEFULルーティング
  resources :users, only: [:new, :create]
  resources :tasks
end
