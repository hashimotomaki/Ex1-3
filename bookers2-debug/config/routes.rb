Rails.application.routes.draw do

  root 'homes#top'
  get 'home/about' => 'homes#about', as: 'about'
  devise_for :users
  resources :users,only: [:show,:index,:edit,:update]
  resources :books do
    resources :favorites,only: [:create,:destroy]
    resources :book_comments,only: [:create, :destroy]
  end
end
