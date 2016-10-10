Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  namespace :api do
    namespace :v1 do
      post '/signin', to: 'sessions#create'
      resources :users
      resources :groups
      resources :events
      resources :messages
    end
  end
end
