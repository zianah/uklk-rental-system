Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :bookings
  resources :reports
  resources :contacts
  resources :rentals do
    resources :reviews
  end
  
  devise_for :users
  root 'rentals#index'

  devise_scope :user do
    get '/users', to: 'devise/registrations#new'
    get '/users/password', to: 'devise/passwords#new'
  end
  
end
