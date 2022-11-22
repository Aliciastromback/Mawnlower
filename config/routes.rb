Rails.application.routes.draw do
  root to: 'lawnmowers#index'
  resources :lawnmowers
  devise_for :users


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
