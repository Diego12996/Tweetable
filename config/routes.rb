Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: :callbacks }
  root to: "tweets#index"

  resources :tweets do
    resources :comments
  end

end
