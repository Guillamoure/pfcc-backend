class CreateKlassArchetypeFeatures < ActiveRecord::Migration[5.2]
  def change
    create_table :klass_archetype_features do |t|
      t.integer :klass_archetype_id
      t.string :name
      t.string :description
    end
  end
end
