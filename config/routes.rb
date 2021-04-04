Rails.application.routes.draw do
  devise_for :users
  root to: "facilities#index"

  resources :users, only: [:show, :edit, :update, :destroy] do
    member do
      get 'mypage'
    end
    resources :comments, only: [:edit, :update, :destroy]
    resources :pictures, only: [:edit, :update, :destroy]
  end

  resources :facilities, only: [:index, :show] do
    collection do
      get 'search'
    end
    resources :comments, only: [:new, :create]
    resources :pictures, only: [:new, :create]
  end
end
