Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'my_account', to: 'pages#account'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :beauticians do #when adding new and create for treatment nest within beauticians
    resources :beautician_treatments, only: [:new, :create]
  end
  resources :treatments, only: [:index, :show] do
    # resources :bookings, only: [:new, :create] 
  end 
  resources :bookings, except: [:new, :create] do
    resources :reviews, except: [:destroy]
  end
  resources :beautician_treatments, only: [:edit, :update, :index] do
    resources :bookings, only: [:new, :create] 
  end

  resources :reviews, only: [:destroy]
  resources :orders, only: [:show, :create] do
    resources :payments, only: :new
  end

  get 'search_results', to: "beauticians#search_results"

  mount StripeEvent::Engine, at: '/stripe-webhooks'
end
