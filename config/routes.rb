Rails.application.routes.draw do
  get 'pages/index'
  get 'pages/about'
  get 'pages/contact'
  get 'search/:city_state', to: 'searches#index'
  root to: 'pages#index'
end
