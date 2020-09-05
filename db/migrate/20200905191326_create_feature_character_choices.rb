class CreateFeatureCharacterChoices < ActiveRecord::Migration[5.2]
  def change
    create_table :feature_character_choices do |t|
      t.integer :feature_id
      t.string :sub_feature
      t.string :column
      t.string :option
      t.boolean :can_change, default: true
      t.integer :num_of_choices, default: 1
    end
  end
end
