Rails.application.routes.draw do
  
  devise_for :users
  root to: "prototypes#index"
  resources :prototypes, only: [:create, :update, :new, :show, :edit, :destroy] do
  resources :comments, only: :create 
  end
  resources :users, only: :show
end
