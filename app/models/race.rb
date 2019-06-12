class Race < ApplicationRecord
  has_many :racial_traits
  has_many :race_ability_score_modifiers
  has_many :characters
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
