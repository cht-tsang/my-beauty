Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :beauticians do
    resources :bookings, except: [:destroy, :index]
    resources :reviews, except: [:destroy]
  end
  resources :bookings, only: [:destroy, :index]
  resources :reviews, only: [:destroy]
end
