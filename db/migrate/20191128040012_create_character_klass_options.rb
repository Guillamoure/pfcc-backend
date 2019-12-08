class CreateCharacterKlassOptions < ActiveRecord::Migration[5.2]
  def change
    create_table :character_klass_options do |t|
      t.integer :character_klass_id
      t.integer :feature_option_id
    end
  end
end
