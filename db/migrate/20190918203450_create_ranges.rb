class CreateRanges < ActiveRecord::Migration[5.2]
  def change
    create_table :ranges do |t|
      t.string :name
      t.integer :feet
      t.float :increase_per_level
    end
  end
end
