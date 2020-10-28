class Api::V1::EncountersController < ApplicationController

  def index

  end

  def show

  end

  def create
    @encounter = Encounter.create!(campaign_id: params[:campaign_id], name: params[:name], notes: params[:notes])

    params[:creatures].each do |creature_hash|
      EncounterCreature.create!(encounter_id: @encounter.id, creature_id: creature_hash[:creature][:id], count: creature_hash[:count])
    end

    render json: {response: "Encounter Successful Created"}, status: 201
  end

  def update
    @encounter = Encounter.find(params[:id])
    @encounter.update(name: params[:name], notes: params[:notes])

    @encounter.encounter_creatures.each do |creature_hash|
      params_creature = params[:creatures].find {|cr| cr[:creature][:id] == creature_hash.creature.id}
      if (params_creature)
        creature_hash.update(count: params_creature[:count])
      else
        creature_hash.destroy
      end
    end

    params[:creatures].each do |creature_hash|
      stored_creature = @encounter.creatures.find {|cr| cr.id == creature_hash[:creature][:id]}
      if !stored_creature
        EncounterCreature.create!(encounter_id: @encounter.id, creature_id: creature_hash[:creature][:id], count: creature_hash[:count])
      end
    end

    render json: {response: "Encounter Successful Updated"}, status: 200

  end

  def destroy
    @encounter = Encounter.find(params[:id])
    @encounter.destroy
    render json: @encounter, status: 200
  end

end
