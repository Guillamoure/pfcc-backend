class CreateCharacterPoisons < ActiveRecord::Migration[5.2]
  def change
    create_table :character_poisons do |t|
      t.integer :character_id
      t.integer :poison_id
    end
  end
end
