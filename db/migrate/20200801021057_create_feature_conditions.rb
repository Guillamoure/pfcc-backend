class CreateFeatureConditions < ActiveRecord::Migration[5.2]
  def change
    create_table :feature_conditions do |t|
      t.integer :feature_id
      t.string :unless_wearing, default: nil
      t.string :unless_load, default: nil
      t.boolean :affected_by_temporary_stat_bonus, default: nil
      t.string :if_affected_by_condition, default: nil
    end
  end
end
