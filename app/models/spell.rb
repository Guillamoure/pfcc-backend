class Spell < ApplicationRecord
  has_many :spell_components
  has_many :components, through: :spell_components

  has_many :spell_list_spells
  has_many :spell_lists, through: :spell_list_spells

  has_many :spell_subschools
  has_many :subschools, through: :spell_subschools

  belongs_to :action
  belongs_to :spell_range
  belongs_to :magic_school

  has_many :spell_features
  has_many :features, through: :spell_features

  # create a method that does this vv
  # has_many :feature_castable_spells
  # has_many :features, through: :feature_castable_spells
  # has_many :klass_specialization_feature_features, through: :features
  # has_many :klass_specialization_features, through: :klass_specialization_features
  # has_many :klass_specializations, through: :klass_specialization_features

  def Spell.able_to_be_potions
    Spell.all.select do |spell|
      valid = true

      spell.spell_list_spells.each do |sls|
        if sls.spell_level > 3
          valid = false
        end
      end
      if spell.spell_list_spells.length == 0
        valid = false
      end

      if !["Standard Action", "Full-Round Action", "Move Action", "Swift Action", "Free Action", "Immediate Action", "Three Rounds"].include?(spell.action.name)
        valid = false
      end

      if spell.spell_range.name == "Personal"
        valid = false
      end

      if !(spell.target.include?("creature") || spell.target.include?("object")) || spell.target.include?("summoned creature")
        valid = false
      end


      valid
    end
  end

end
