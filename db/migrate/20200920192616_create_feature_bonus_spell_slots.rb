class CreateFeatureBonusSpellSlots < ActiveRecord::Migration[5.2]
  def change
    create_table :feature_bonus_spell_slots do |t|
      t.integer :feature_id
      t.string :list_of_available_spells
      t.string :sub_feature
    end
  end
end
