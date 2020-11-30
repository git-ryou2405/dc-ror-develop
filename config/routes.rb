Rails.application.routes.draw do
  root 'users#index'
  
  devise_for :users, skip: 'registrations', controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords'
  }
  devise_scope :user do
    get '/users/cancel', to: 'users/registrations#cancel', as: :cancel_user_registration
    get '/users/sign_up', to: 'users/registrations#new', as: :new_user_registration
    get '/users/:id/edit', to: 'users/registrations#edit', as: :edit_user_registration
    patch '/users/', to: 'users/registrations#update', as: :user_registration
    post '/users', to: 'users/registrations#create'
  end
  
  resources :users, only: [:index, :show, :edit, :update]
  resources :journals, only: [:index, :new, :create]
end
