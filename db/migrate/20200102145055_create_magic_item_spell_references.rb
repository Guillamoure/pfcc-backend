class CreateMagicItemSpellReferences < ActiveRecord::Migration[5.2]
  def change
    create_table :magic_item_spell_references do |t|
      t.integer :spell_id
      t.integer :magic_item_id
    end
  end
end
