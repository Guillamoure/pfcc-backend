class KnownSpellSerializer < ActiveModel::Serializer
  attributes :id, :klass_spell, :spell, :klass

  def spell
    SpellSerializer.new(self.object.spell)
  end
end
