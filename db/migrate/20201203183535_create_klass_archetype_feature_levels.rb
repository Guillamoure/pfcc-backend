class CreateKlassArchetypeFeatureLevels < ActiveRecord::Migration[5.2]
  def change
    create_table :klass_archetype_feature_levels do |t|
      t.integer :klass_archetype_feature_id
      t.integer :level
      t.string :table_description
    end
  end
end
