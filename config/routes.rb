Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: "users/sessions",
    registrations: "users/registrations"
  }
  
  root to: "facilities#index"

  resources :users, only: [:show, :destroy] do
    member do
      get "mypage"
    end
    resources :comments, only: [:edit, :update, :destroy]
    resources :pictures, only: [:show, :edit, :update, :destroy]
  end

  resources :facilities, only: [:index, :show] do
    collection do
      get "search", "keysearch"
    end
    resources :comments, only: [:new, :create]
    resources :pictures, only: [:new, :create]
  end
end
