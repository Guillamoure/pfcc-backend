class CreateCreatures < ActiveRecord::Migration[5.2]
  def change
    create_table :creatures do |t|
      t.string :name
      t.string :description
      t.string :blurb
      t.float :challenge_rating
      t.string :alignment
      t.string :size
      t.integer :strength
      t.integer :dexterity
      t.integer :constitution
      t.integer :intelligence
      t.integer :wisdom
      t.integer :charisma
      t.integer :creature_type_id
      t.integer :hit_dice
      t.integer :natural_armor
      t.string :environment
      t.string :organization
      t.string :treasure
    end
  end
end
