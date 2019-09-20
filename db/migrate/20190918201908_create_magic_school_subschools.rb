class CreateMagicSchoolSubschools < ActiveRecord::Migration[5.2]
  def change
    create_table :magic_school_subschools do |t|
      t.integer :magic_school_id
      t.integer :subschool_id
    end
  end
end
