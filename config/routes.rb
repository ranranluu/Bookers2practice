Rails.application.routes.draw do
  devise_for :users

  root to: 'homes#top'
  get '/home/about', to: 'homes#about'

  resources :users, only: [:show, :edit, :update, :index]
  resources :books, only: [:index, :show, :create, :update, :destroy, :edit] do
    resource :favorites, only: [:create, :destroy]
    resources :book_comments, only: [:create, :destroy]
  end

end
