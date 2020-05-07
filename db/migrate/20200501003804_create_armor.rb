class CreateArmor < ActiveRecord::Migration[5.2]
  def change
    create_table :armors do |t|
      t.string :name
      t.string :proficiency
      t.float :price_in_gp
      t.integer :bonus
      t.string :bonus_type
      t.integer :max_dex_bonus
      t.integer :armor_check_penalty
      t.integer :arcane_spell_failure
      t.integer :spell_30
      t.integer :spell_20
      t.float :weight
      t.integer :source_id
      t.string :description
      t.string :don
      t.string :don_hastily
      t.string :remove
      t.boolean :extra, default: false
      t.boolean :weapon, default: false
      t.boolean :bonus_price_in_gp, default: false
      t.integer :damage_dice
      t.integer :num_of_dice
      t.integer :critical, default: 2
      t.integer :critical_range, default: 20
      t.string :weapon_proficiency
      t.string :weapon_category
    end
  end
end
