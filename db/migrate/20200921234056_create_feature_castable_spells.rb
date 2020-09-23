class CreateFeatureCastableSpells < ActiveRecord::Migration[5.2]
  def change
    create_table :feature_castable_spells do |t|
      t.integer :feature_id
      t.integer :spell_id
      t.boolean :effective_level_based_on_feature_level
      t.boolean :added_to_known_spells
      t.integer :applicable_spell_level
      t.boolean :bonus_spell_slot_option
    end
  end
end
