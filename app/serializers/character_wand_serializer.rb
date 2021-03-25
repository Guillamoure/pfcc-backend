class CharacterWandSerializer < ActiveModel::Serializer
  attributes :id, :charges, :known, :discovered, :caster_level, :spell, :name, :description

  belongs_to :spell

end
