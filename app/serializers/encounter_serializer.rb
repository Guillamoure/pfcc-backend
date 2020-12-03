class EncounterSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :notes, :description, :creatures

  def creatures
    begin
      se = self.object.object
    rescue
      se = self.object
    end
    se.encounter_creatures.map do |ec|
      creature = Creature.find(ec.creature_id)
      {
        count: ec.count,
        creature: CreatureSerializer.new(creature)
      }
    end
  end

end
