class FeatureSpellcasting < ApplicationRecord
  belongs_to :feature
  belongs_to :spell_list
  belongs_to :secondary_spell_list, class_name: "SpellList", optional: true

  has_many :spells_per_day_per_level
  has_many :known_spells_per_level
end
