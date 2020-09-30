class PreparedSpell < ApplicationRecord
  belongs_to :spellcasting, class_name: "FeatureSpellcasting", foreign_key: "feature_spellcasting_id"
  belongs_to :character
  belongs_to :spell_list_spell, optional: true

  has_one :spell, through: :spell_list_spell
  has_many :spell_subschools, through: :spell
  has_many :subschools, through: :spell_subschools
  has_one :action, through: :spell
  has_one :spell_range, through: :spell
  has_one :magic_school, through: :spell

  def alternate_source
    if self.alternate_source_id && self.alternate_source_ability
      if self.alternate_source_ability == "klass_specialization_feature"
        @kspecFeature = KlassSpecializationFeature.find(self.alternate_source_id)
      end
      return @kspecFeature
    else
      return nil
    end
  end

end
