Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :beauticians
  resources :treatments, only: [:index, :show] do
    resources :bookings, only: [:new, :create]
    resources :reviews, except: [:destroy]
  end
  resources :bookings, except: [:new, :create]
  resources :reviews, only: [:destroy]


  resources :orders, only: [:show, :create] do
    resources :payments, only: :new
  end
end
