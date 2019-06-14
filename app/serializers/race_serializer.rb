class RaceSerializer < ActiveModel::Serializer
  attributes :id, :name, :speed, :size, :description, :racial_traits, :race_ability_score_modifiers, :img_url

  has_many :racial_traits
  has_many :race_ability_score_modifiers
end
