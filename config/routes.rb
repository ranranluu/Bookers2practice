Rails.application.routes.draw do
  devise_for :users

  root to: 'homes#top'
  get '/home/about', to: 'homes#about'

  resources :users, only: [:show, :edit, :update, :index]
  resources :books, only: [:index, :show, :create, :update, :destroy, :edit]
end
