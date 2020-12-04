class CreateArchetypeFeatureReplaceKlassFeatures < ActiveRecord::Migration[5.2]
  def change
    create_table :archetype_feature_replace_klass_features do |t|
      t.integer :klass_archetype_feature_id
      t.integer :klass_feature_id
      t.string :replace_or_alter
      t.boolean :alters_class_skills, default: false
    end
  end
end
