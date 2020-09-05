class CreateKlassFeatureKlassSpecializations < ActiveRecord::Migration[5.2]
  def change
    create_table :klass_feature_klass_specializations do |t|
      t.integer :klass_feature_id
      t.integer :klass_specialization_id
    end
  end
end
