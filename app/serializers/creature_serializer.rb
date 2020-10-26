class CreatureSerializer < ActiveModel::Serializer
  attributes :id, :name, :hit_dice, :description, :challenge_rating, :alignment, :size, :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :creature_type, :feats, :weapons, :natural_armor, :environment, :organization, :treasure

  def feats
    self.object.feats.map do |f|
      FeatSerializer.new(f)
    end
  end

  def weapons
    s = self.object
    s.creature_weapons.map do |cw|
      weapon = WeaponSerializer.new(cw.weapon)
      {
        weapon: weapon,
        masterwork: cw.masterwork,
        name: cw.name
      }
    end
  end
end
