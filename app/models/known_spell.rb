class KnownSpell < ApplicationRecord
  belongs_to :klass_spell
  belongs_to :character
  has_one :spell, through: :klass_spell
  belongs_to :klass
end
