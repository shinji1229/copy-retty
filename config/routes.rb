Rails.application.routes.draw do
  devise_for :users
  devise_for :restaurants
  # devise_for :restaurants, controllers: {
  #   sessions:      'restaurants/sessions',
  #   passwords:     'restaurants/passwords',
  #   registrations: 'restaurants/registrations'
  # }
  # devise_for :users, controllers: {
  #   sessions:      'users/sessions',
  #   passwords:     'users/passwords',
  #   registrations: 'users/registrations'
  # }
  root 'users#show'
  resources :users, only: [:index, :show]
  resources :restaurants, only: [:index, :show] do
    collection do
      get 'search'
    end
    resources :introductions
    resources :comments
  end
end
