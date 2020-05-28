class CreateFeatureArmorProficiency < ActiveRecord::Migration[5.2]
  def change
    create_table :feature_armor_proficiencies do |t|
      t.integer :feature_id
      t.string :proficiency_group
      t.integer :armor_id
      t.boolean :additive, default: true
    end
  end
end
