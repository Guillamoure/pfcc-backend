class WeaponSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :proficiency, :weapon_type, :price_in_gp, :damage_dice, :num_of_dice, :critical, :critical_range, :range, :thrown, :weight, :damage_type, :description, :double_weapon, :double_num_of_dice, :double_damage_dice, :double_damage_type, :ammunition, :ammunition_type, :source, :weapon_qualities, :weapon_groups, :hands

  has_many :features
end
