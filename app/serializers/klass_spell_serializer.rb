class KlassSpellSerializer < ActiveModel::Serializer
  attributes :klass, :spell

  # belongs_to :spell, serializer: SpellSerializer
end
