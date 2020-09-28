class PreparedSpellSerializer < ActiveModel::Serializer
  attributes :id, :spellcasting, :character_id, :spell_list_spell, :spell_level, :cast, :spell, :bonus_spell, :alternate_source

  def spell
    SpellSerializer.new(self.object.spell)
  end
end
