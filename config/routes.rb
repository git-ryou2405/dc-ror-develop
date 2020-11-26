Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions',
    :passwords => 'users/passwords'
  }
  root 'users#index'
  
  resources :users, except: :destroy
  resources :journals, only: [:index, :new, :create]
end
