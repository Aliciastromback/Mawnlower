Rails.application.routes.draw do
  root to: 'pages#home'
  resources :lawnmowers do
    resources :bookings, except: [:index]
    resources :reviews
  end
  resources :bookings, only: [:index]
  devise_for :users

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
