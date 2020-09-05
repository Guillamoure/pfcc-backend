class CharacterKnownSpellSerializer < ActiveModel::Serializer
  attributes :id, :spell, :spell_list_spell, :spellcasting

  def spell
    SpellSerializer.new(self.object.spell)
  end
  belongs_to :spell_list_spell
end
