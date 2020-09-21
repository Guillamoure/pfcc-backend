class CreateFeatureDamage < ActiveRecord::Migration[5.2]
  def change
    create_table :feature_damages do |t|
      t.integer :feature_id
      t.integer :num_of_dice
      t.integer :damage_dice
      t.string :damage_type
      t.integer :applicable_level
      t.integer :applicable_step
      t.integer :base_mod
      t.string :base_mod_modifier
      t.float :mod_increase_per_level
      t.integer :mimimum_base_mod
    end
  end
end
