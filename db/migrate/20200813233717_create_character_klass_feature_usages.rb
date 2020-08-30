class CreateCharacterKlassFeatureUsages < ActiveRecord::Migration[5.2]
  def change
    create_table :character_klass_feature_usages do |t|
      t.integer :character_id
      t.integer :klass_feature_id
      t.integer :feature_usage_id
      t.integer :current_usage, default: 0
    end
  end
end
