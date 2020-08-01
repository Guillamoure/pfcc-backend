class AddColumnsToFeatureStatBonus < ActiveRecord::Migration[5.2]
  def change
    add_column :feature_stat_bonus, :specific_statistic, :string, default: nil
    add_column :feature_stat_bonus, :bonus_multiplier, :string, default: nil
  end
end
