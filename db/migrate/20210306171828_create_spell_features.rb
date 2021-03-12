class CreateSpellFeatures < ActiveRecord::Migration[5.2]
  def change
    create_table :spell_features do |t|
      t.integer :spell_id
      t.integer :feature_id
    end
  end
end
