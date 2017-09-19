Rails.application.routes.draw do
  devise_for :users
  get 'pages/index'
  get 'pages/about'
  get 'pages/contact'
  get 'search/:city_state', to: 'searches#index'
  get 'search', to: 'searches#index'
  root to: 'pages#index'
end
