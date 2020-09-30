class AddClassSkillToFeatureSkillBonus < ActiveRecord::Migration[5.2]
  def change
    add_column :feature_skill_bonus, :class_skill, :boolean
  end
end
