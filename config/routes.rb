Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post '/signin', to: 'sessions#create'
      resources :users
      resources :groups
      resources :events
    end
  end
end
