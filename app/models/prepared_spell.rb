class PreparedSpell < ApplicationRecord
  belongs_to :spellcasting, class_name: "FeatureSpellcasting", foreign_key: "feature_spellcasting_id"
  belongs_to :character
  belongs_to :spell_list_spell

  has_one :spell, through: :spell_list_spell
  has_many :spell_subschools, through: :spell
  has_many :subschools, through: :spell_subschools
  has_one :action, through: :spell
  has_one :spell_range, through: :spell
  has_one :magic_school, through: :spell

end
