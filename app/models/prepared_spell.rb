class PreparedSpell < ApplicationRecord
  belongs_to :klass_spell
  belongs_to :character

  has_one :spell, through: :klass_spell
  has_one :action, through: :spell
  has_one :spell_range, through: :spell
  has_one :magic_school, through: :spell

  has_one :klass, through: :klass_spell
end
