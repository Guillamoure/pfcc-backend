class CreateKlassSpecializationFeature < ActiveRecord::Migration[5.2]
  def change
    create_table :klass_specialization_features do |t|
      t.integer :klass_specialization_id
      t.string :name
      t.string :description
      t.integer :level
    end
  end
end
