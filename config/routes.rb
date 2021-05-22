Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: "users/sessions",
    registrations: "users/registrations"
  }
  
  root to: "facilities#index"

  resources :users, only: [:show, :destroy] do
    member do
      get "mypage", "favolist", "goodlist"
    end
    resources :comments, only: [:edit, :update, :destroy]
    resources :pictures, only: [:show, :edit, :update, :destroy] do
      resource :goods, only: [:create, :destroy]
    end
  end

  resources :facilities, only: [:index, :show] do
    collection do
      get "search", "keysearch", "hokkaidotohoku", "kanto", "chubu", "kinki", "chugokushikoku", "kyushuokinawa", "spot"
    end
    resources :comments, only: [:new, :create]
    resources :pictures, only: [:new, :create]
    resource :favorites, only: [:create, :destroy]
  end

end
