class AddUnitToFeatureUsage < ActiveRecord::Migration[5.2]
  def change
    add_column :feature_usages, :unit, :string
    add_column :feature_usages, :adjustable, :boolean, default: false
    add_column :feature_usages, :toggleable, :boolean, default: false
  end
end
