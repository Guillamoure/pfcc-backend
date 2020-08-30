class CreateMonth < ActiveRecord::Migration[5.2]
  def change
    create_table :months do |t|
      t.string :name
      t.integer :num_of_days
      t.integer :place
      t.boolean :random_num_of_days, default: false
      t.string :season
      t.boolean :leap_month, default: false
      t.integer :calendar_id
    end
  end
end
