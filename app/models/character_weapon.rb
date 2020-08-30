class CharacterWeapon < ApplicationRecord
  belongs_to :character
  belongs_to :weapon

  belongs_to :character_weapon_ammunition, class_name: "CharacterWeapon", optional: true
end
