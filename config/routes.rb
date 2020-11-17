Rails.application.routes.draw do
  resources :user_balances
  root 'users#index'
  
  resources :users
  resources :send_histories
end
