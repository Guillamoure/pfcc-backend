class AddBonusMultiplierBasedOnFeatureLevelToFeatureStatBonuses < ActiveRecord::Migration[5.2]
  def change
    add_column :feature_stat_bonus, :bonus_multiplier_based_on_feature_level, :boolean, default: false
  end
end
