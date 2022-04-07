Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :quotes
  resources :products, only: [:new, :create] do
    resources :supplies, only: [:index, :new, :create]
  end
  resources :customers
  resources :categories, only: [:index, :new, :create, :destroy] do
    resources :services, only: [:new, :create, :update, :edit]
  end
end
