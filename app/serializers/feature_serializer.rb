class FeatureSerializer < ActiveModel::Serializer
  attributes :id, :action, :usage, :name, :after, :feature_usage_spell_options, :skill_bonuses, :spells, :feature_container, :stat_bonuses, :skill_notes, :stat_notes, :movements, :languages, :loading, :attack_of_opportunity, :weapon_proficiencies, :armor_proficiencies, :conditions, :applications, :status_conditions, :alternate_actions, :saving_throws, :spellcasting, :display_descriptions, :damages, :character_choices, :steps, :bonus_spell_slot, :spontaneous_castings, :attack, :castable_spells

  has_one :stat_bonuses
  has_one :skill_bonuses
  has_one :usage
  has_one :spellcasting

  def castable_spells
    self.object.castable_spells.map do |csp|
      {id: csp.id, effective_level_based_on_feature_level: csp.effective_level_based_on_feature_level, added_to_known_spells: csp.added_to_known_spells, applicable_spell_level: csp.applicable_spell_level, bonus_spell_slot_option: csp.bonus_spell_slot_option, cast_at_will: csp.cast_at_will, spell: SpellSerializer.new(csp.spell)}
    end
  end

end
