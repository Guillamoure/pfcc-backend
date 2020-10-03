class AddAffectsEnemiesToFeatureApplications < ActiveRecord::Migration[5.2]
  def change
    add_column :feature_applications, :affects_enemies, :boolean
  end
end
