Rails.application.routes.draw do

  devise_for :users
  root to: "homes#top"
  resources :post_images, only: [:new,:create,:index,:show,:destroy]
  resources :users, only: [:show, :edit]
  get 'homes/about' =>'homes#about' ,as: 'about'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
