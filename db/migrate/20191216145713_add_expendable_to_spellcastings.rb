class AddExpendableToSpellcastings < ActiveRecord::Migration[5.2]
  def change
    add_column :spellcastings, :expendable, :boolean, default: true
    add_column :spellcastings, :infinite_zero_level, :boolean, default: false
    add_column :spellcastings, :bonus_spells, :boolean, default: true
    add_column :spellcastings, :klass_spell_list_id, :integer
  end
end
