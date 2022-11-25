Rails.application.routes.draw do
  root to: 'pages#home'
  resources :lawnmowers do
    resources :bookings, except: [:index, :edit, :update]
    resources :reviews
  end
  resources :bookings, only: [:index]
  devise_for :users
  patch 'bookings/:id/accepted', to: 'bookings#accepted', as: 'accepted'
  patch 'bookings/:id/cancelled', to: 'bookings#cancelled', as: 'cancelled'
  patch 'bookings/:id/cancelled_user', to: 'bookings#cancelled_user', as: 'cancelled_user'
end
