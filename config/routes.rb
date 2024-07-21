Rails.application.routes.draw do
  resources :numbers
  # get 'home/index'
  # get "up" => "rails/health#show", as: :rails_health_check
  root 'home#index'
  # Defines the root path route ("/")
  # root "posts#index"
end
