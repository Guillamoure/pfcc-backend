class CreateCharacterChoices < ActiveRecord::Migration[5.2]
  def change
    create_table :character_choices do |t|
      t.integer :character_id
      t.integer :feature_id
      t.string :choice
    end
  end
end
