class CreateKlassSpecialization < ActiveRecord::Migration[5.2]
  def change
    create_table :klass_specializations do |t|
      t.string :name
      t.string :description
    end
  end
end
