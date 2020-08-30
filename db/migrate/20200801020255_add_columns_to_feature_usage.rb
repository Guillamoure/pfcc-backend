class AddColumnsToFeatureUsage < ActiveRecord::Migration[5.2]
  def change
    add_column :feature_usages, :base_limit, :integer, default: nil
    add_column :feature_usages, :base_limit_modifier, :string, default: nil
    add_column :feature_usages, :limit_increase_per_level, :integer, default: nil
    add_column :feature_usages, :toggle_off_action_id, :integer, default: nil
    add_column :feature_usages, :expend_frequency, :string, default: nil
  end
end
