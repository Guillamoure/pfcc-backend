class CreateFeatureUsage < ActiveRecord::Migration[5.2]
  def change
    create_table :feature_usages do |t|
      t.integer :feature_id
      t.boolean :destroy_after_use, default: false
      t.integer :limit
      t.string :limit_frequency
    end
  end
end
