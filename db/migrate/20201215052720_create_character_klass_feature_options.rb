class CreateCharacterKlassFeatureOptions < ActiveRecord::Migration[5.2]
  def change
    create_table :character_klass_feature_options do |t|
      t.integer :character_id
      t.integer :feature_option_id
      t.integer :level
    end
  end
end
