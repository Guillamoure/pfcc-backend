class CreateFeatureSpontaneousCastings < ActiveRecord::Migration[5.2]
  def change
    create_table :feature_spontaneous_castings do |t|
      t.integer :feature_id
      t.integer :spell_id
      t.string :keyword
      t.integer :spell_level
      t.boolean :player_choice
    end
  end
end
