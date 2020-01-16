class CreateFeatureUsageSpellOptions < ActiveRecord::Migration[5.2]
  def change
    create_table :feature_usage_spell_options do |t|
      t.integer :feature_usage_id
      t.integer :spell_id
      t.integer :cost, default: 1
      t.boolean :castable, default: true
    end
  end
end
