class PreparedSpellsPerLevel < ApplicationRecord
  belongs_to :spellcasting, class_name: "FeatureSpellcasting", foreign_key: "feature_spellcasting_id"
end
