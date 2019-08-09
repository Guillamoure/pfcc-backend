class ClassSkillsetSkill < ApplicationRecord
  belongs_to :skill
  belongs_to :skillset
  belongs_to :klass
end
