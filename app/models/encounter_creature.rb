class EncounterCreature < ApplicationRecord
  belongs_to :encounter
  belongs_to :creature
end
