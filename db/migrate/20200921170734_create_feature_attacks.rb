class CreateFeatureAttacks < ActiveRecord::Migration[5.2]
  def change
    create_table :feature_attacks do |t|
      t.integer :feature_id
      t.string :attack_type
      t.string :armor_class
    end
  end
end
