class CreateNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :notes do |t|
      t.integer :character_id
      t.string :title
      t.string :date
      t.string :details

      t.timestamps
    end
  end
end
