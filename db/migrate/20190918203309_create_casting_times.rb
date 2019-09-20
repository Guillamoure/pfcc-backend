class CreateCastingTimes < ActiveRecord::Migration[5.2]
  def change
    create_table :casting_times do |t|
      t.string :name
    end
  end
end
