class KnownSpellSerializer < ActiveModel::Serializer
  attributes :id, :klass_spell, :character, :spell

  belongs_to :spell
end
