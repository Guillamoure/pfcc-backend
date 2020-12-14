class CreateAlternateRacialTraits < ActiveRecord::Migration[5.2]
  def change
    create_table :alternate_racial_traits do |t|
      t.integer :race_id
      t.string :name
      t.string :description
      t.integer :source_id
    end
  end
end
