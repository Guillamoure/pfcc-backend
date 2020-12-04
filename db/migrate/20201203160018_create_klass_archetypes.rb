class CreateKlassArchetypes < ActiveRecord::Migration[5.2]
  def change
    create_table :klass_archetypes do |t|
      t.integer :klass_id
      t.string :name
      t.string :description
      t.integer :source_id
    end
  end
end
