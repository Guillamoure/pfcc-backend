class CreateWeapons < ActiveRecord::Migration[5.2]
  def change
    create_table :weapons do |t|
      t.string :name
      t.string :category
      t.string :proficiency
      t.string :weapon_type
      t.float :price_in_gp
      t.integer :damage_dice
      t.integer :num_of_dice
      t.integer :critical, default: 2
      t.integer :critical_range, default: 20
      t.integer :range
      t.integer :thrown
      t.float :weight
      t.string :damage_type
      t.string :description
      t.boolean :double_weapon
      t.integer :double_num_of_dice, default: 0
      t.integer :double_damage_dice, default: 0
      t.string :double_damage_type
      t.boolean :ammunition, default: false
      t.string :ammunition_type
    end
  end
end
