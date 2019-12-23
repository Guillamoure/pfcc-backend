class CharacterKlassSerializer < ActiveModel::Serializer
  attributes :id, :character_id, :klass_id, :hp, :feat_id, :ability_score_improvement, :level, :favored_klass_bonus

  # belongs_to :character
  # belongs_to :klass
  # has_many :klass_features
  has_many :feature_options
end
