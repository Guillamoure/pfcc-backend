class KnownSpellsPerLevel < ApplicationRecord
  belongs_to :spellcasting, class_name: "FeatureSpellcasting"
end
