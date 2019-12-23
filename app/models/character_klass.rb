class CharacterKlass < ApplicationRecord
  belongs_to :klass
  has_many :klass_features, through: :klass
  belongs_to :character
  has_many :character_klass_options
  has_many :feature_options, through: :character_klass_options
  belongs_to :favored_klass_bonus, optional: true, class_name: 'FavoredKlassBonus'
end
