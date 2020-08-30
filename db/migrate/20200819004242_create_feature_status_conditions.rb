class CreateFeatureStatusConditions < ActiveRecord::Migration[5.2]
  def change
    create_table :feature_status_conditions do |t|
      t.integer :feature_id
      t.string :condition
    end
  end
end
