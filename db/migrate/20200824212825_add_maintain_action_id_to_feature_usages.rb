class AddMaintainActionIdToFeatureUsages < ActiveRecord::Migration[5.2]
  def change
    add_column :feature_usages, :maintain_action_id, :integer
  end
end
