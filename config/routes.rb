Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create, :update, :destroy]
      resources :posts, only: [:index, :create, :update, :destroy]
      resources :comments, only: [:index, :create, :update, :destroy]
    end
  end
end