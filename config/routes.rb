Rails.application.routes.draw do
  devise_for :users
  resources :tweets do
    collection do
      get 'search'
    end
  end
  resources :users, only: [:index, :show]
  root to: 'tweets#index'
end
