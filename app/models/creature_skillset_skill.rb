class CreatureSkillsetSkill < ApplicationRecord
  belongs_to :creature
  belongs_to :skillset
  belongs_to :skill
end
