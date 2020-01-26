class AddWieldableToFeatureUsage < ActiveRecord::Migration[5.2]
  def change
    add_column :feature_usages, :wieldable, :boolean, default: false
  end
end
