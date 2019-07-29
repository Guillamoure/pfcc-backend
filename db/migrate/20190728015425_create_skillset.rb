class CreateSkillset < ActiveRecord::Migration[5.2]
  def change
    create_table :skillsets do |t|
      t.string :name
    end
  end
end
