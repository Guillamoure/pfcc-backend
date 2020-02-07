class CreateCharacterWeapon < ActiveRecord::Migration[5.2]
  def change
    create_table :character_weapons do |t|
      t.integer :character_id
      t.integer :weapon_id
      t.boolean :masterwork, default: false
      t.string :name
      t.string :description
      t.boolean :discovered, default: false
      t.boolean :known, default: true
      t.boolean :equipped, default: false
    end
  end
end
