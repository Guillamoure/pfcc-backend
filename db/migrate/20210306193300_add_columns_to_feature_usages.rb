class AddColumnsToFeatureUsages < ActiveRecord::Migration[5.2]
  def change
    add_column :feature_usages, :daily_base, :float
    add_column :feature_usages, :daily_base_increase_per_level, :float
  end
end
