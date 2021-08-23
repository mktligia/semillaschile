Rails.application.routes.draw do
  devise_for :users

  # Ruta estática
  root to: 'pages#home'

  resources :products, only: [:index, :show]
  resources :orders, only: [:new, :create, :edit, :update]
end
