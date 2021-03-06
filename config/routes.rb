Rails.application.routes.draw do
  
  get 'schedules/new'
  
  
  get 'events/search', to: 'events#search' , as: 'search_path'
  post 'follow/:id', to: 'relationships#follow', as: 'follow'
  post 'unfollow/:id', to: 'relationships#unfollow', as: 'unfollow'
  get 'users/following/:user_id', to: 'users#following', as:'users_following'
  get 'users/follower/:user_id', to: 'users#follower', as:'users_follower'
  get 'relationships/followings'
  get 'relationships/followers'
  root 'home#index'
  get 'about', to: 'home#about'
  get 'feel', to: 'home#feel'
  get 'feel_page/:id', to: 'home#feel_page', as:'feel_page'
  get 'genre', to: 'home#genre', as:'genre'
  get 'genre_page/:id', to: 'home#genre_page', as:'genre_page'
  post 'users/create', to: 'users#create'
  post 'home/login' , to: 'home#login'
  post '/', to: 'home#index'
  get 'users/:id/edit', to: 'users#edit' , as: :edit_user
  patch 'users/:id/edit', to: 'users#update', as: :update_user
  get 'users/:id/our', to: 'users#show_our', as: 'show_our'
  get 'users/:id', to: 'users#show', as: 'mypage'
  get 'login',   to: 'sessions#new'
  post 'events/new', to: 'events#new', as:'event_new'
  post 'events/confirm', to: 'events#confirm', as:'event_confirm'
  get 'events/:id/edit', to:'events#edit', as: :edit_event
  patch 'events/:id/edit', to: 'events#update', as: :update_event
  get 'events/:id', to: 'events#show', as: 'eventpage'
  post 'events/create', to: 'events#create', as:'event_create'
  post 'sessions/create',   to: 'sessions#create'
  delete 'logout',  to: 'sessions#destroy'
  resources :users, params: :id

  
  
  get 'rooms/:room_id/message/:page', to: 'rooms#show_message', as: 'fetch' 
  get 'rooms/:current/:to_user', to: 'rooms#show', as: 'room' 
  
  get 'rooms/:room_id', to: 'rooms#show', as: 'exist_room' # 初回アクセス時
  post 'message/create', to: 'messages#create', as: 'message_create'

  resources :notifications, only: :index



  resources :users do
    resource :relationships, only: [:create, :destroy]
    get 'folloeings', to: 'relationships#followings', as: 'followings'
    get 'followers', to: 'relationships#followers', as: 'followers'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end

  resources :users, only: [:show, :edit, :update] do
    get :schedules, on: :collection
  end

  resources :events, expect: [:index] do
    resource :schedules, only: [:create, :destroy]
  end


end
