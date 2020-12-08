class CreateCharacterKlassArchetypes < ActiveRecord::Migration[5.2]
  def change
    create_table :character_klass_archetypes do |t|
      t.integer :character_id
      t.integer :klass_archetype_id
    end
  end
end
