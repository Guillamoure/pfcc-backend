class CreatureWeapon < ApplicationRecord
  belongs_to :creature
  belongs_to :weapon
end
