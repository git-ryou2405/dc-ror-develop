Rails.application.routes.draw do
  root 'users#index'
  
  resources :users, except: :destroy
  resources :journals, only: [:index, :new, :create]
end
