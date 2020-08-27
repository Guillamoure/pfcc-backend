class FeatureSkillBonus < ApplicationRecord
  belongs_to :skill, optional: true
  belongs_to :feature
end
