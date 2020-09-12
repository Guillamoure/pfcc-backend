class CreateFeatureDamage < ActiveRecord::Migration[5.2]
  def change
    create_table :feature_damages do |t|
      t.integer :feature_id
      t.integer :num_of_dice
      t.integer :damage_dice
      t.string :damage_type
      t.integer :num_of_dice_increase
      t.integer :damage_dice_increase
      t.integer :applicable_level
      t.integer :base_limit
      t.string :base_limit_modifier
      t.float :limit_increase_per_level
      t.integer :mimimum_base_limit
    end
  end
end
