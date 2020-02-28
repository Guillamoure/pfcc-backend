class AddCustomToFeatureSkillBonus < ActiveRecord::Migration[5.2]
  def change
    add_column :feature_skill_bonus, :custom, :string
    add_column :feature_skill_notes, :custom, :string
  end
end
