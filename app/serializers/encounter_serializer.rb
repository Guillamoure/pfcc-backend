class EncounterSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :notes, :description, :creatures

  def creatures
    self.object.encounter_creatures.map do |ec|
      creature = Creature.find(ec.creature_id)
      {
        count: ec.count,
        creature: CreatureSerializer.new(creature)
      }
    end
  end
  
end
