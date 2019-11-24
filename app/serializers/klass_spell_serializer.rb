class KlassSpellSerializer < ActiveModel::Serializer
  attributes :klass, :spell, :spell_level

  # belongs_to :spell, serializer: SpellSerializer
end
