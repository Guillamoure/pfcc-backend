Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :klasses
      resources :klass_features
      resources :races
      resources :racial_traits
      resources :race_ability_score_modifiers, only: [:create]
      resources :users, only: [:create]
      resources :characters
      resources :character_klasses
        post '/signup', to: 'users#create'
        post '/login', to: 'users#login'
        get '/profile', to: 'users#profile'
        get '/auth', to: 'users#auth'
    end
  end
end
