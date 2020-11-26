Rails.application.routes.draw do
  devise_for :users
  root 'users#index'
  
  resources :users, except: :destroy
  resources :journals, only: [:index, :new, :create]
end
