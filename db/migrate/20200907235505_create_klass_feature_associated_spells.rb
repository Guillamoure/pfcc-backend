class CreateKlassFeatureAssociatedSpells < ActiveRecord::Migration[5.2]
  def change
    create_table :klass_feature_associated_spells do |t|
      t.integer :spell_id
      t.integer :klass_feature_id
    end
  end
end
