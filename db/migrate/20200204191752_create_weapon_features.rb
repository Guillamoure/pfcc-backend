class CreateWeaponFeatures < ActiveRecord::Migration[5.2]
  def change
    create_table :weapon_features do |t|
      t.integer :weapon_id
      t.integer :feature_id
    end
  end
end
