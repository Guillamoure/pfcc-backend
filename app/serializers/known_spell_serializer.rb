class KnownSpellSerializer < ActiveModel::Serializer
  attributes :id, :klass_spell, :spell

  def spell
    SpellSerializer.new(self.object.spell)
  end
end
