class CreateSpecializationLevel < ActiveRecord::Migration[5.2]
  def change
    create_table :specialization_levels do |t|
      t.integer :klass_specialization_id
      t.integer :level
      t.string :table_description
    end
  end
end
