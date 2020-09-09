class PreparedSpellSerializer < ActiveModel::Serializer
  attributes :id, :feature_spellcasting_id, :character_id, :spell_list_spell, :spell_level, :cast, :spell

  def spell
    SpellSerializer.new(self.object.spell)
  end
end
