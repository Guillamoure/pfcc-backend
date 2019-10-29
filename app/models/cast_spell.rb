class CastSpell < ApplicationRecord
  belongs_to :character
  belongs_to :klass
end
