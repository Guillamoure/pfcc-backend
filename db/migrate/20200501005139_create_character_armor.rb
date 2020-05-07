class CreateCharacterArmor < ActiveRecord::Migration[5.2]
  def change
    create_table :character_armors do |t|
      t.integer :character_id
      t.integer :armor_id
      t.boolean :masterwork, default: false
      t.string :name
      t.string :description
      t.boolean :discovered, default: false
      t.boolean :known, default: true
      t.boolean :equipped, default: false
      t.integer :extra_armor_id
    end
  end
end
