class CreateKlasses < ActiveRecord::Migration[5.2]
  def change
    create_table :klasses do |t|
      t.string :name
      t.string :description
      t.integer :hit_die
      t.integer :skill_ranks

      t.timestamps
    end
  end
end
