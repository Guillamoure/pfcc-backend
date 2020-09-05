class CharacterKnownSpell < ApplicationRecord
  belongs_to :spellcasting, class_name: "FeatureSpellcasting", foreign_key: "feature_spellcasting_id"
  belongs_to :character
  belongs_to :spell_list_spell
  has_one :spell, through: :spell_list_spell
end
