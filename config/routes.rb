Rails.application.routes.draw do
  root 'users#index'
  
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions',
    :passwords => 'users/passwords'
  }
  resources :users, only: [:index, :show, :edit, :update]
  resources :journals, only: [:index, :new, :create]
end
