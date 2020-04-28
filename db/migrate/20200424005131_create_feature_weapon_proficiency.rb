class CreateFeatureWeaponProficiency < ActiveRecord::Migration[5.2]
  def change
    create_table :feature_weapon_proficiencies do |t|
      t.integer :feature_id
      t.string :proficiency_group
      t.integer :weapon_id
      t.boolean :additive, default: true
    end
  end
end
