class CharacterKnownSpell < ApplicationRecord
  belongs_to :spellcasting, class_name: "FeatureSpellcasting", foreign_key: "feature_spellcasting_id"
  belongs_to :character
  belongs_to :spell_list_spell
  has_one :spell, through: :spell_list_spell

  validates :spell_list_spell_id, uniqueness: { scope: [:character_id, :feature_spellcasting_id], message: "already knows this spell from this class" }

  validate :too_low_leveled

  def too_low_leveled
    klass = FeatureSpellcasting.find(feature_spellcasting_id).feature.klass_feature.klass
    klass_level = Character.find(character_id).class_obj.find do |cl|
      cl[:klass_id] == klass.id
    end[:level]
    known_spells_this_level = FeatureSpellcasting.find(feature_spellcasting_id).known_spells_per_level.select do |ks|
      ks.klass_level == klass_level
    end
    spell_level = SpellListSpell.find(spell_list_spell_id).spell_level

    can_you_know_a_spell_at_this_level = false

    known_spells_this_level.each do |ks|
      if ks.spell_level >= spell_level
        can_you_know_a_spell_at_this_level = true
      end
    end
    
    if !can_you_know_a_spell_at_this_level
      errors.add(:spell_list_spell_id, "is too high a spell level to be known by the character")
    end
  end



end
