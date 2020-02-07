class Weapon < ApplicationRecord
  has_many :weapon_weapon_qualities
  has_many :weapon_qualities, through: :weapon_weapon_qualities
  has_many :weapon_weapon_groups
  has_many :weapon_groups, through: :weapon_weapon_groups
end
