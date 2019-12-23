class FavoredKlassBonus < ApplicationRecord
  belongs_to :race, optional: true
  belongs_to :klass, optional: true
  self.table_name = 'favored_klass_bonuses'
end
