Rails.application.routes.draw do
  devise_for :users
  root to: "tweets#index"

  resources :comments
  resources :tweets

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
