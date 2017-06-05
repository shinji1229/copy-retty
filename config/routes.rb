Rails.application.routes.draw do
  devise_for :users
  devise_for :restaurants
  root 'users#show'
  resources :users, only: [:index, :show]
  resources :restaurants do
    resources :comments
  end
end
