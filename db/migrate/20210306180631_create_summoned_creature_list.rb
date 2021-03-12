class CreateSummonedCreatureList < ActiveRecord::Migration[5.2]
  def change
    create_table :summoned_creature_lists do |t|
      t.string :name
    end
  end
end
