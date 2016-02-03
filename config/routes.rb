Rails.application.routes.draw do
  devise_for :users
  root to: 'props#index'
  authenticate :user do
  resources :props, only: [:new, :create, :edit, :update, :destroy]
  end
  resources :props
end
