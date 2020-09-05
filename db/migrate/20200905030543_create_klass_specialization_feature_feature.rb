class CreateKlassSpecializationFeatureFeature < ActiveRecord::Migration[5.2]
  def change
    create_table :klass_specialization_feature_features do |t|
      t.string :klass_specialization_feature_id
      t.string :feature_id
    end
  end
end
