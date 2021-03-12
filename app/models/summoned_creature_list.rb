class SummonedCreatureList < ApplicationRecord
  has_many :summoned_creature_list_creatures
  has_many :creatures, through: :summoned_creature_list_creatures
end
