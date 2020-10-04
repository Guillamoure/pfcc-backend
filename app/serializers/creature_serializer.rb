class CreatureSerializer < ActiveModel::Serializer
  attributes :id, :name, :hit_dice, :description, :challenge_rating, :alignment, :size, :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :creature_type, :feats

  def feats
    self.object.feats.map do |f|
      FeatSerializer.new(f)
    end
  end
end
