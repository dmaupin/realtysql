Rails.application.routes.draw do
  root to: 'props#index'
  resources :props
end
