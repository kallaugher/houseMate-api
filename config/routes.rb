Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/api/v1/signin', to: 'sessions#create'

  namespace :api do
    namespace :v1 do
      resources :users
      resources :groups
      resources :events
    end
  end
end
