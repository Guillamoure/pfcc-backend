class KnownSpell < ApplicationRecord
  belongs_to :klass_spell
  belongs_to :character
end