class CreateSource < ActiveRecord::Migration[5.2]
  def change
    create_table :sources do |t|
      t.string :title
      t.string :abbreviation
      t.string :code
    end
  end
end
