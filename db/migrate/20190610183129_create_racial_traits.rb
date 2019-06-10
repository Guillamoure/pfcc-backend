class CreateRacialTraits < ActiveRecord::Migration[5.2]
  def change
    create_table :racial_traits do |t|
      t.string :name
      t.integer :race_id
      t.string :description
    end
  end
end
