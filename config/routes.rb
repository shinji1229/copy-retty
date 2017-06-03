Rails.application.routes.draw do
  devise_for :users
  root 'users#show'
  resources :users do
    resources :comments
  end
  resources :restaurants
end
