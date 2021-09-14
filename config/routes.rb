Rails.application.routes.draw do
  devise_for :users

  # Ruta estática
  root to: 'pages#home'


  resources :products, only: [:index, :show, :new, :create]

  resources :orders, except: :index

  get "/orders/check", to: redirect('orders/check.html')


end
