class CreateEncounters < ActiveRecord::Migration[5.2]
  def change
    create_table :encounters do |t|
      t.integer :campaign_id
      t.string :name
      t.string :notes
      t.string :location
      t.string :description
    end
  end
end
