class CreateDuration < ActiveRecord::Migration[5.2]
  def change
    create_table :durations do |t|
      t.string :name
      t.string :description
      t.integer :time
      t.boolean :dismissible
      t.boolean :concentration
      t.integer :time
      t.string :unit
      t.integer :increase_per_level
    end
  end
end
