class CharacterSkillsetSkill < ApplicationRecord
  belongs_to :skill
  belongs_to :skillset
  belongs_to :character
end
