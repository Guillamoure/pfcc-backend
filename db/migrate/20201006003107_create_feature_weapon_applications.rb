class CreateFeatureWeaponApplications < ActiveRecord::Migration[5.2]
  def change
    create_table :feature_weapon_applications do |t|
      t.integer :feature_id
      t.integer :weapon_id
      t.string :proficiency_group
      t.boolean :could_apply_dex_for_attack_rolls
    end
  end
end
