class DropMagicSchoolSubschools < ActiveRecord::Migration[5.2]
  def change
    drop_table :magic_school_subschools
  end
end
