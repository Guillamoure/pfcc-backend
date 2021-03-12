class SummonedCreatureListCreature < ApplicationRecord
  belongs_to :summoned_creature_list
  belongs_to :creature
end
