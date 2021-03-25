class CharacterPotionSerializer < ActiveModel::Serializer
  attributes :id, :potion_or_oil, :known, :discovered, :caster_level, :spell

  belongs_to :spell

end
