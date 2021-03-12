class CreateCharacterKlassArchetypeFeatureUsages < ActiveRecord::Migration[5.2]
  def change
    create_table :character_klass_archetype_feature_usages do |t|
      t.integer :character_id
      t.integer :klass_archetype_feature_id
      t.integer :feature_usage_id
      t.integer :current_usage, default: 0
    end
  end
end
