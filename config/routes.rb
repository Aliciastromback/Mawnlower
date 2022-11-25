Rails.application.routes.draw do
  root to: 'pages#home'
  resources :lawnmowers do
    resources :bookings, except: [:index, :edit, :update]
    resources :reviews
  end
  resources :bookings, only: [:index]
  devise_for :users
  patch 'bookings/:id/cancelled', to: 'bookings#cancelled', as: 'cancelled'
end
