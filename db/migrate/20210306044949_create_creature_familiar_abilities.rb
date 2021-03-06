class CreateCreatureFamiliarAbilities < ActiveRecord::Migration[5.2]
  def change
    create_table :creature_familiar_abilities do |t|
      t.integer :creature_id
      t.string :ability
    end
  end
end
