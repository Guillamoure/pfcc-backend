class Encounter < ApplicationRecord
  belongs_to :campaign
  has_many :encounter_creatures
  has_many :creatures, through: :encounter_creatures
end
