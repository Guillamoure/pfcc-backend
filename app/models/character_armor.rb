class CharacterArmor < ApplicationRecord
  belongs_to :character
  belongs_to :armor
  belongs_to :base_armor, class_name: 'CharacterArmor', foreign_key: 'extra_armor_id', optional: true
  has_many :extra_armor_options, class_name: 'CharacterArmor', foreign_key: 'extra_armor_id'

  def armor_options
    self.extra_armor_options.map {|eao| eao.armor}
  end

end
