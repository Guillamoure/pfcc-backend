class FeatureSpellcasting < ApplicationRecord
  belongs_to :feature
  belongs_to :spell_list
  belongs_to :secondary_spell_list, class_name: "SpellList", optional: true

  has_many :spells_per_day_per_level
  has_many :known_spells_per_level

  has_one :klass_feature_feature, through: :feature
  has_one :klass_feature, through: :klass_feature_feature
  has_one :klass, through: :klass_feature

  def klass_id
    self.klass.id
  end
end
