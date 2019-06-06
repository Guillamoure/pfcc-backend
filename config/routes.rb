Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :klasses
      resources :klass_features
      resources :users, only: [:create]
        post '/signup', to: 'users#create'
        post '/login', to: 'users#login'
        get '/profile', to: 'users#profile'
    end
  end
end
