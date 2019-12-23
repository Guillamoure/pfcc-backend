class AddFavoredKlassBonusIdToCharacterKlasses < ActiveRecord::Migration[5.2]
  def change
    add_column :character_klasses, :favored_klass_bonus_id, :integer
  end
end
