class FeatureSpellcasting < ApplicationRecord
  belongs_to :feature
  belongs_to :spells_list
  belongs_to :secondary_spells_list, class_name: "SpellsList", optional: true

  has_many :spells_per_day_per_level
  has_many :known_spells_per_level
end
