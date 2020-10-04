Rails.application.routes.draw do

  root 'homes#top'
  get 'home/about' => 'homes#about', as: 'about'
  devise_for :users
  resources :users,only: [:show,:index,:edit,:update]
  resources :books
  resources :favorites,only: [:create,:destroy]
  resources :book_comments,only: [:reate, :destroy]
end
