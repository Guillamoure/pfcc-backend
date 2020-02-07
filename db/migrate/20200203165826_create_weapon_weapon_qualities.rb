class CreateWeaponWeaponQualities < ActiveRecord::Migration[5.2]
  def change
    create_table :weapon_weapon_qualities do |t|
      t.integer :weapon_id
      t.integer :weapon_quality_id
    end
  end
end
