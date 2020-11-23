Rails.application.routes.draw do
  root 'users#index'
  
  resources :users, except: :destroy
  resources :user_balances, only: [:index, :new, :create]
end
