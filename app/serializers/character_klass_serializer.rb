class CharacterKlassSerializer < ActiveModel::Serializer
  attributes :id, :character_id, :klass_id, :hp, :feat_id, :ability_score_improvement

  belongs_to :character
  belongs_to :klass
  has_many :klass_features, through: :klass
end
