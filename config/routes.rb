Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  get "units/index", to: "units#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :shops, only: [:new, :create, :index, :show]do
    resources :units, only: [:new, :create]

  end

  resources :bookings, only: [] do
    resources :reviews, only: [:new, :create]
  end

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

end
