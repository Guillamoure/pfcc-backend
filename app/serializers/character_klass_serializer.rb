class CharacterKlassSerializer < ActiveModel::Serializer
  attributes :id, :character_id, :klass_id, :hp, :feat, :ability_score_improvement, :level

  # belongs_to :character
  # belongs_to :klass
  # has_many :klass_features
  # has_many :feature_options
  has_one :feat
end
