class KlassSpell < ApplicationRecord
  belongs_to :klass
  belongs_to :spell

  has_many :prepared_spells
end
