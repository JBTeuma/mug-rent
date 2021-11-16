Rails.application.routes.draw do
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

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
