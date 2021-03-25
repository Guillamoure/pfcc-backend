class CharacterScrollSerializer < ActiveModel::Serializer
  attributes :id, :scroll_type, :known, :discovered, :spell_level, :spell

  belongs_to :spell

end
