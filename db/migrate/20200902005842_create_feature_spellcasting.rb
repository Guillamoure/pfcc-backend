class CreateFeatureSpellcasting < ActiveRecord::Migration[5.2]
  def change
    create_table :feature_spellcastings do |t|
      t.integer :feature_id
      t.string :ability_score
      t.boolean :prepare_spells
      t.boolean :expend_prepared_spells
      t.boolean :infinite_zero_level
      t.boolean :known_spell_list
      t.boolean :apply_metamagic_when_preparing
      t.boolean :apply_metamagic_when_casting
      t.string :type_of_magic
      t.boolean :considered_spellcasting, default: true
      t.integer :caster_level_penalty
      t.integer :spells_list_id
      t.integer :secondary_spells_list_id, default: nil
    end
  end
end
