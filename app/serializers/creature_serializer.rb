class CreatureSerializer < ActiveModel::Serializer
  attributes :id, :name, :hit_dice, :description, :challenge_rating, :alignment, :size, :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :creature_type, :feats, :weapons, :natural_armor, :environment, :organization, :treasure, :familiar_ability, :movements, :creature_skillset_skills

  # def creature_type
  #   ct = self.object.creature_type
  #   {
  #     name: ct.name,
  #     description: ct.description,
  #     hit_die: ct.hit_die,
  #     skill_ranks: ct.skill_ranks,
  #     fortitude: ct.fortitude,
  #     reflex: ct.reflex,
  #     will: ct.will,
  #     creature_type_skillset_skills: ct.creature_type_skillset_skills
  #   }
  # end

  def feats
    self.object.feats.map do |f|
      FeatSerializer.new(f)
    end
  end

  def weapons
    begin
      se = self.object.object
    rescue
      se = self.object
    end
    se.creature_weapons.map do |cw|
      weapon = WeaponSerializer.new(cw.weapon)
      {
        weapon: weapon,
        masterwork: cw.masterwork,
        name: cw.name
      }
    end
  end
end
