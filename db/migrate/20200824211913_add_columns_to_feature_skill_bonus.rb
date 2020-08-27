class AddColumnsToFeatureSkillBonus < ActiveRecord::Migration[5.2]
  def change
    add_column :feature_skill_bonus, :specific_statistic, :string
    add_column :feature_skill_bonus, :bonus_multiplier, :string
    add_column :feature_skill_bonus, :round_down, :boolean
    add_column :feature_skill_bonus, :minimum_bonus, :integer
    add_column :feature_skill_bonus, :bonus_multiplier_based_on_feature_level, :boolean, default: false
    remove_column :feature_skill_bonus, :bonus, :integer
    add_column :feature_skill_bonus, :bonus, :float
  end
end
