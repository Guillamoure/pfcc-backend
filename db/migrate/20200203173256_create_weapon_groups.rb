class CreateWeaponGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :weapon_groups do |t|
      t.string :name
    end
  end
end
