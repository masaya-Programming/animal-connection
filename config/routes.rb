Rails.application.routes.draw do
  get 'facilities/index'
  root to: "facilities#index"
end
