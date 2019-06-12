class CreateCharacterKlasses < ActiveRecord::Migration[5.2]
  def change
    create_table :character_klasses do |t|
      t.integer :character_id
      t.integer :klass_id
      t.integer :level

      t.timestamps
    end
  end
end
