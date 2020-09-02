class Klass < ApplicationRecord
  belongs_to :source

  has_many :klass_features, dependent: :destroy
  has_many :feature_options, through: :klass_features
  has_many :character_klasses, dependent: :destroy

  has_many :class_skillset_skills, dependent: :destroy
  has_many :skills, through: :class_skillset_skills

  # has_many :spells_per_days
  # has_many :prepared_amounts

  # has_many :klass_spells
  # has_many :spells, through: :klass_spells
  # has_many :cast_spells, dependent: :destroy
  has_many :favored_klass_bonuses, class_name: 'FavoredKlassBonus'

  has_many :campaign_klasses, dependent: :destroy
  has_many :campaigns, through: :campaign_klasses

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
