class CharacterKlassSerializer < ActiveModel::Serializer
  attributes :id, :character_id, :klass_id, :level

  belongs_to :character
  belongs_to :klass
end
