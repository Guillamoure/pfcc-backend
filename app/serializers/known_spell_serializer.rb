class KnownSpellSerializer < ActiveModel::Serializer
  attributes :id, :klass_spell, :character, :spell, :klass

  belongs_to :spell
end
