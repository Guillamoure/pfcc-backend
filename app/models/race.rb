class Race < ApplicationRecord
  belongs_to :source

  has_many :racial_traits, dependent: :destroy
  has_many :race_ability_score_modifiers, dependent: :destroy
  has_many :characters, dependent: :destroy
  has_many :favored_klass_bonuses, class_name: 'FavoredKlassBonus'

  validates :name, uniqueness: { case_sensitive: false }
  validates :description, presence: true
  validates :size, presence: true
  validates :speed, presence: true



   # def hit_die_exists
   #   if hit_die == 0
   #     errors.add(:hit_die, "must be selected")
   #   end
   # end
end
