Rails.application.routes.draw do
  devise_for :users
  resources :tweets do
    resources :likes, only: [:create, :destroy]
    collection do
      get 'search'
    end
    member do
      get 'searches'
    end
  end
  resources :users, only: [:index, :show] do
    collection do
      get 'likes'
    end
  end
  root to: 'tweets#index'
end
