class Klass < ApplicationRecord
  has_many :klass_features, dependent: :destroy
  has_many :character_klasses, dependent: :destroy

  has_many :class_skillset_skills, dependent: :destroy
  has_many :skills, through: :class_skillset_skills

  has_many :spells_per_days

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
