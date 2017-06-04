Rails.application.routes.draw do
  devise_for :restaurants
  devise_for :users
  root 'users#show'
  resources :restaurants do
    resources :comments
  end
end
