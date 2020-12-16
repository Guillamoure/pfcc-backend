class CreateRacialTraitAssociatedSpells < ActiveRecord::Migration[5.2]
  def change
    create_table :racial_trait_associated_spells do |t|
      t.integer :racial_trait_id
      t.integer :spell_id
    end
  end
end
