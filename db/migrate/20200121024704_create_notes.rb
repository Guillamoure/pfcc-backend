class CreateNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :notes do |t|
      t.integer :character_id
      t.string :title
      t.string :weekday
      t.string :month
      t.integer :day
      t.integer :age
      t.integer :year
      t.string :details

      t.timestamps
    end
  end
end
