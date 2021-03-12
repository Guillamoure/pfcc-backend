class AddColumnsToCreatureWeapons < ActiveRecord::Migration[5.2]
  def change
    add_column :creature_weapons, :overwrite_damage_dice, :integer
    add_column :creature_weapons, :overwrite_num_of_dice, :integer
    add_column :creature_weapons, :num_of_attacks, :integer
  end
end
