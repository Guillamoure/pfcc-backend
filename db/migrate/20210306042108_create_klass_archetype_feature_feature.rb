class CreateKlassArchetypeFeatureFeature < ActiveRecord::Migration[5.2]
  def change
    create_table :klass_archetype_feature_features do |t|
      t.integer :klass_archetype_feature_id
      t.integer :feature_id
    end
  end
end
