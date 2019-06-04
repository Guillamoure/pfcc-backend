class CreateKlassFeatures < ActiveRecord::Migration[5.2]
  def change
    create_table :klass_features do |t|
      t.integer :klass_id
      t.string :name
      t.integer :level_learned
      t.string :description

      t.timestamps
    end
  end
end
