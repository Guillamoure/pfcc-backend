class RacialTraitAssociatedSpell < ApplicationRecord
  belongs_to :racial_trait
  belongs_to :spell
end
