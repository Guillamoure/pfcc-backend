class CreateFeatureAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :feature_animals do |t|
      t.integer :feature_id
      t.string :animal_type
      t.integer :summoned_creature_list_id
    end
  end
end
