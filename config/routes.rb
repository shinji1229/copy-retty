Rails.application.routes.draw do
  devise_for :users
  devise_for :restaurants
  root 'users#show'
  resources :users, only: [:index, :show] do
    collection do
      get 'entrance'
    end
  end
  resources :restaurants, only: [:index, :show] do
    collection do
      get 'search'
    end
    resources :introductions
    resources :comments
  end
end
