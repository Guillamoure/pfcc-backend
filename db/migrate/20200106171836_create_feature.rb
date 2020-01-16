class CreateFeature < ActiveRecord::Migration[5.2]
  def change
    create_table :features do |t|
      t.integer :action_id
      t.string :name
    end
  end
end
