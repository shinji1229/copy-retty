Rails.application.routes.draw do
  devise_for :users
  devise_for :restaurants
  root 'entrances#index'
  resources :users, only: [:index, :show] do
    resources :events, only: [:new, :create, :destroy]
  end
  resources :restaurants, only: [:index, :show] do
    collection do
      get 'search'
    end
    resources :introductions
    resources :comments
  end
  resources :entrances, only: [:index]
  get 'events', to: 'events#events'
end
