Rails.application.routes.draw do
  
  devise_for :users

  root to: 'homes#top'
  get '/home/about', to: 'homes#about'

  resources :users, only: [:show, :edit, :update, :index] do
    resource :relationships, only: [:create, :destroy]
    get 'followings' => 'relationships#followings', as: 'followings'
    get 'followers' => 'relationships#followers', as: 'followers'
  end

  resources :books, only: [:index, :show, :create, :update, :destroy, :edit] do
    resource :favorites, only: [:create, :destroy]
    resources :book_comments, only: [:create, :destroy]
  end

  get 'chat/:id' => 'chats#show', as: 'chat'
  resources :chats, only: [:create]

end
