Rails.application.routes.draw do
  devise_for :users
  root to: 'props#index'
  resources :props
end
