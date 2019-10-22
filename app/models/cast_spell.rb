class CastSpell < ApplicationRecord
  belongs_to :character
  belongs_to :klass_id
end
