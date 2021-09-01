Rails.application.routes.draw do
  devise_for :users

  # Ruta estática
  root to: 'pages#home'

  resources :products, only: [:index, :show] do
    resources :orders, only: [:new, :create]
  end
  
  resources :orders, only: [:edit, :update, :show]
end
