Rails.application.routes.draw do
  devise_for :users
  resources :users,only: [:show,:index,:edit,:update,:new,:create,:destroy]
  resources :books
  root 'home#top'
  get 'home/about'
end