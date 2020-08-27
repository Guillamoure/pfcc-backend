class CreateFeatureUsageFeatureOptions < ActiveRecord::Migration[5.2]
  def change
    create_table :feature_usage_feature_options do |t|
      t.integer :base_feature_usage_id
      t.integer :option_feature_usage_id
      t.string :option_name
      t.integer :cost
    end
  end
end
