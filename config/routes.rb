Rails.application.routes.draw do
  devise_for :users
  get 'items/index'
  root to: "items#index"
  resources :prototypes, only: [:edit, :update] do
  end
end
