class CreateAlternateTraitReplaceRacialTraits < ActiveRecord::Migration[5.2]
  def change
    create_table :alternate_trait_replace_racial_traits do |t|
      t.integer :alternate_racial_trait_id
      t.integer :racial_trait_id
    end
  end
end
