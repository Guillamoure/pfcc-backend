class CreateWeaponWeaponGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :weapon_weapon_groups do |t|
      t.integer :weapon_id
      t.integer :weapon_group_id
    end
  end
end
