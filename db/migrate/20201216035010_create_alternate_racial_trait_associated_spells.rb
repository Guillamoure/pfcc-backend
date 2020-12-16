class CreateAlternateRacialTraitAssociatedSpells < ActiveRecord::Migration[5.2]
  def change
    create_table :alternate_racial_trait_associated_spells do |t|
      t.integer :alternate_racial_trait_id
      t.integer :spell_id
    end
  end
end
