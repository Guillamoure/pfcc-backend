class AddBonusMultiplierIncreaseBasedOnCountToFeatureStatBonuses < ActiveRecord::Migration[5.2]
  def change
    add_column :feature_stat_bonus, :bonus_multiplier_increase_based_on_count, :integer
  end
end
