class CreateWeaponHands < ActiveRecord::Migration[5.2]
  def change
    create_table :weapon_hands do |t|
      t.integer :weapon_id
      t.string :hands
      t.integer :bonus
    end
  end
end
