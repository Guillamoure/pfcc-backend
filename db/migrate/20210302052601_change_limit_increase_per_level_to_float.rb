class ChangeLimitIncreasePerLevelToFloat < ActiveRecord::Migration[5.2]
  def change
    remove_column :feature_usages, :limit_increase_per_level, :integer
    add_column :feature_usages, :limit_increase_per_level, :float
    remove_column :feature_usages, :base_limit, :integer
    add_column :feature_usages, :base_limit, :float
  end
end
