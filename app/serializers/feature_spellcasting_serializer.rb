class FeatureSpellcastingSerializer < ActiveModel::Serializer
  attributes :id, :feature_id, :ability_score, :prepare_spells, :expend_prepared_spells, :infinite_zero_level, :known_spell_list, :apply_metamagic_when_casting, :apply_metamagic_when_preparing, :type_of_magic, :considered_spellcasting, :caster_level_penalty, :spell_list, :secondary_spell_list, :spells_per_day_per_level, :known_spells_per_level, :klass_id

end
