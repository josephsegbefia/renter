Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :units, only: [:index]

  get "dashboard", to: "dashboard#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :shops, only: [:new, :create, :index, :show] do
    resources :units, only: [:index, :new, :create, :show] do
      resources :bookings, only: [:new, :create] do
        get "/pay", to: "bookings#pay", as: :pay
      end
    end
  end

  resources :bookings, except: [:new, :create, :show] do
    resources :reviews, only: [:new, :create]
  end



  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

end
