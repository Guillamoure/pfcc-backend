class CreateCharacterMagicItemFeatureUsage < ActiveRecord::Migration[5.2]
  def change
    create_table :character_magic_item_feature_usages do |t|
      t.integer :character_magic_item_id
      t.integer :feature_usage_id
      t.integer :current_usage, default: 0
    end
  end
end
