class CreateFavoredKlassBonuses < ActiveRecord::Migration[5.2]
  def change
    create_table :favored_klass_bonuses do |t|
      t.string :description
      t.integer :klass_id
      t.integer :race_id
    end
  end
end
