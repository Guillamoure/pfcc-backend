class CreateFeatureAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :feature_animals do |t|
      t.integer :feature_id
      t.string :animal_type
    end
  end
end
