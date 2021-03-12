class AddMinimumLimitToFeatureUsages < ActiveRecord::Migration[5.2]
  def change
    add_column :feature_usages, :minimum_limit, :integer
  end
end
