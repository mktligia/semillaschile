Rails.application.routes.draw do
  devise_for :users

  # Ruta estática
  root to: 'pages#home'

  resources :products, only: [:index, :show, :new, :create] do
    resources :orders, only: [:new, :create]
  end
  
  resources :orders, only: [:edit, :update, :show]

end
