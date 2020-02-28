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
      resources :skills
      resources :skillsets
      resources :spells
      resources :known_spells
      resources :prepared_spells
      resources :cast_spells

      post '/signup', to: 'users#create'
      post '/login', to: 'users#login'
      get '/profile', to: 'users#profile'
      get '/auth', to: 'users#auth'
      get '/data', to: 'data#all'
      patch '/background', to: 'char_edits#background'
      patch '/character', to: 'char_edits#character'
      patch '/ability', to: 'char_edits#ability'
      patch '/hp', to: 'char_edits#hp'
      patch '/hp_changes', to: 'char_edits#hp_changes'
      patch 'users/active_skillset', to: 'users#update_skillset'
      post 'class_skillset_skills', to: 'class_skillset_skills#create'
      patch 'class_skillset_skills', to: 'class_skillset_skills#update'
      post 'character_skillset_skills', to: 'character_skillset_skills#ranks'
      post 'spells_per_day', to: 'klasses#spells'
      post 'spellcasting', to: 'effects#spellcasting'
      delete 'rest', to: 'char_edits#clear_all'
      patch 'cast_spells', to: 'cast_spells#rollback'
      get 'item_search', to: 'items#index'
      post 'character_items', to: 'items#create'
      get 'character_magic_items/:id', to: 'items#cmi_show'
      delete 'character_magic_items/:id', to: 'items#magic_destroy'
      patch 'character_magic_items/:id', to: 'items#usage_update'
      patch 'character_magic_items_discovered/:id', to: 'items#mi_discovered'
      patch 'character_magic_items_known/:id', to: 'items#known'
      patch 'character_magic_items_equip/:id', to: 'items#mi_equip'
      patch 'character_magic_items_trade/:id', to: 'items#mi_trade'
      get 'campaign_containers/:id', to: 'items#shared_containers'
      post 'container_storage/:id', to: 'items#store'
      delete 'container_withdraw/:id', to: 'items#withdraw'
      get 'container/:id', to: 'items#container_contents'
      patch 'character_magic_item_feature_usage_options/:id', to: 'items#feature_option'
      post 'notes', to: 'notes#create'
      patch 'notes/:id', to: 'notes#update'
      delete 'notes/:id', to: 'notes#destroy'
      patch 'campaigns/:id', to: 'campaigns#date_change'
      patch 'character_max_hp/:id', to: 'char_edits#set_max_hp'
      patch 'character_weapons_discovered/:id', to: 'items#w_discovered'
      patch 'character_weapons_equip/:id', to: 'items#w_equip'
      delete 'character_weapons/:id', to: 'items#weapon_destroy'
      patch 'character_weapons_trade/:id', to: 'items#w_trade'

      get 'ideas/:id', to: 'ideas#index'
    end
  end
end
