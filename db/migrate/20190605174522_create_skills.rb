class CreateSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :skills do |t|
      t.string :name
      t.string :ability_score
      t.string :description
      t.boolean :untrained, default: true
    end
  end
end
