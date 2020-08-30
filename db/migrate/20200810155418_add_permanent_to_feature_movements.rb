class AddPermanentToFeatureMovements < ActiveRecord::Migration[5.2]
  def change
    add_column :feature_movements, :permanent, :boolean, default: false
  end
end
