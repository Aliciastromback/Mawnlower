Rails.application.routes.draw do
  root to: 'lawnmowers#index'
  resources :lawnmowers do
    resources :bookings, except: [:index]
  end
  resources :bookings, only: [:index]
  devise_for :users


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
