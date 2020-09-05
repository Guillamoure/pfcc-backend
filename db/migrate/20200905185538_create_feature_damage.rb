class CreateFeatureDamage < ActiveRecord::Migration[5.2]
  def change
    create_table :feature_damages do |t|
      t.integer :feature_id
      t.integer :num_of_dice
      t.integer :damage_dice
      t.string :damage_type
      t.integer :applicable_level
    end
  end
end
