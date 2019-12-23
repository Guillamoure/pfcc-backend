class PreparedSpell < ApplicationRecord
  belongs_to :klass_spell
  belongs_to :character

  has_one :spell, through: :klass_spell
  has_many :spell_subschools, through: :spell
  has_many :subschools, through: :spell_subschools
  has_one :action, through: :spell
  has_one :spell_range, through: :spell
  has_one :magic_school, through: :spell

  belongs_to :klass
end
