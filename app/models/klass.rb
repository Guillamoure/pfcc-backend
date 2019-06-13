class Klass < ApplicationRecord
  has_many :klass_features, dependent: :destroy
  has_many :character_klasses, dependent: :destroy
  
  validates :name, uniqueness: { case_sensitive: false }
  validates :description, presence: true
  validates :skill_ranks, presence: true
  validate :hit_die_exists



   def hit_die_exists
     if hit_die == 0
       errors.add(:hit_die, "must be selected")
     end
   end
end
