Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create, :update, :destroy]
      get '/current_user', to: 'auth#show'
      get '/profile', to: 'users#profile'
      post '/login', to: 'auth#create'
      resources :posts, only: [:index, :create, :update, :destroy]
      resources :comments, only: [:index, :create, :update, :destroy]
    end
  end
end