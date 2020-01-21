class CreateFeatureUsageOption < ActiveRecord::Migration[5.2]
  def change
    create_table :feature_usage_options do |t|
      t.integer :feature_usage_id
      t.string :detail
      t.integer :cost
      t.integer :amount
      t.boolean :destroy_after_use, default: false
    end
  end
end
