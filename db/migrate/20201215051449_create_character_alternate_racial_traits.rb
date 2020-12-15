class CreateCharacterAlternateRacialTraits < ActiveRecord::Migration[5.2]
  def change
    create_table :character_alternate_racial_traits do |t|
      t.integer :character_id
      t.integer :alternate_racial_trait_id
    end
  end
end
