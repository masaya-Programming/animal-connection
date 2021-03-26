Rails.application.routes.draw do
  devise_for :users
  root to: "facilities#index"
  resources :facilities, only: [:index, :show] do
    collection do
      get 'search'
    end
    resources :comments, only: [:new, :create]
    resources :pictures, only: [:new, :create]
  end
end
