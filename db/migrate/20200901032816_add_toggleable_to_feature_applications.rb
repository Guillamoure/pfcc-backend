class AddToggleableToFeatureApplications < ActiveRecord::Migration[5.2]
  def change
    add_column :feature_applications, :toggleable, :boolean
  end
end
