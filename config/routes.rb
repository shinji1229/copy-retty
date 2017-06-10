Rails.application.routes.draw do
  devise_for :users
  devise_for :restaurants
  root 'users#entrance'
  resources :users, only: [:index, :show]
  resources :restaurants, only: [:index, :show] do
    collection do
      get 'search'
    end
    resources :introductions
    resources :comments
  end
end
