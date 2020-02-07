class CreateWeaponQualities < ActiveRecord::Migration[5.2]
  def change
    create_table :weapon_qualities do |t|
      t.string :name
      t.string :description
    end
  end
end
