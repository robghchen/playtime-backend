Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create, :update, :destroy]
      get '/current_user', to: 'auth#show'
      get '/profile', to: 'users#profile'
      post '/login', to: 'auth#create'
      resources :posts, only: [:index, :create, :update, :destroy]
      resources :comments, only: [:index, :create, :update, :destroy]
      resources :activities, only: [:index, :create, :update, :destroy]
      resources :tasks, only: [:index, :create, :update, :destroy]
      resources :events, only: [:index, :create, :update, :destroy]
      resources :user_events, only: [:index, :create, :update, :destroy]
    end
  end
end