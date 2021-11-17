Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :mugs, except: %i[destroy update edit] do
    resources :bookings, only: %i[new create]
  end

  resources :bookings, only: [] do
    member do
      patch 'validates'
      patch 'deny'
    end
  end

  resource :dashboard, only: [:show]
end
