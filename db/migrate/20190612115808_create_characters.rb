class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.integer :user_id
      t.string :name
      t.integer :hp
      t.string :alignment
      t.string :deity
      t.string :homeland
      t.string :gender
      t.integer :age
      t.string :height
      t.string :weight
      t.string :hair
      t.string :eyes
      t.integer :strength
      t.integer :dexterity
      t.integer :constitution
      t.integer :intelligence
      t.integer :wisdom
      t.integer :charisma
      t.string :description
      t.string :background

      t.timestamps
    end
  end
end
