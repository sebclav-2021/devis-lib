Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :quotes
  resources :products, only: [:new, :create, :index, :destroy]
  resources :customers
  resources :categories, only: [:index, :new, :create, :destroy] do
    resources :services, only: [:create, :new]
  end
  resources :services, only: [:show] do
    post '/supplies', to: 'services#create_supply'
    resources :supplies, only: [:create]
  end
end
