Rails.application.routes.draw do
  root 'users#index'
  
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions',
    :passwords => 'users/passwords'
  }
  resources :users, except: [:new, :create, :destroy]
  resources :journals, only: [:index, :new, :create]
end
