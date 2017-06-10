Rails.application.routes.draw do
  devise_for :users
  devise_for :restaurants
  root 'entrances#index'
  resources :users, only: [:index, :show]
  resources :restaurants, only: [:index, :show] do
    collection do
      get 'search'
    end
    resources :introductions
    resources :comments
  end
  resources :entrances, only: [:index]
end
