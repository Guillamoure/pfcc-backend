class CreateMagicItems < ActiveRecord::Migration[5.2]
  def change
    create_table :magic_items do |t|
      t.string :name
      t.string :description
      t.string :slot
      t.string :aura
      t.integer :caster_level
      t.float :price_in_gp
      t.float :weight
      t.boolean :activatable
      t.boolean :expendable
    end
  end
end
