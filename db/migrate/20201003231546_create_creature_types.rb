class CreateCreatureTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :creature_types do |t|
      t.string :name
      t.string :description
      t.integer :hit_die
      t.integer :skill_ranks
      t.float :fortitude
      t.float :reflex
      t.float :will
    end
  end
end
