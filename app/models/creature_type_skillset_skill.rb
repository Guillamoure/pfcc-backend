class CreatureTypeSkillsetSkill < ApplicationRecord
  belongs_to :creature_type
  belongs_to :skillset
  belongs_to :skill
end
