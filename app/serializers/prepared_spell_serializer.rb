class PreparedSpellSerializer < ActiveModel::Serializer
  attributes :id, :spellcasting, :character_id, :spell_list_spell, :spell_level, :cast, :spell, :bonus_spell, :alternate_source

  def spell
    if self.object.direct_spell_id
      SpellSerializer.new(Spell.find(self.object.direct_spell_id))
    else
      SpellSerializer.new(self.object.spell)
    end
  end
end
