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
end
