Rails.application.routes.draw do
  devise_for :users
  # resources :profiles
  get 'profile/:id', to: 'profiles#index', as: 'profile'
  get 'search/:location', to: 'searches#index'
  get 'search', to: 'searches#index'
  root to: 'pages#index'
end
