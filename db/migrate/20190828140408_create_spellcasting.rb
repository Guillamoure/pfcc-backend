class CreateSpellcasting < ActiveRecord::Migration[5.2]
  def change
    create_table :spellcastings do |t|
      t.string :ability_score
      t.integer :klass_feature_id
      t.boolean :prepared
      t.boolean :limited
    end
  end
end
