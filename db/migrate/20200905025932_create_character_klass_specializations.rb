class CreateCharacterKlassSpecializations < ActiveRecord::Migration[5.2]
  def change
    create_table :character_klass_specializations do |t|
      t.integer :character_id
      t.integer :klass_feature_klass_specialization_id
    end
  end
end
