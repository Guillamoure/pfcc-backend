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

  def destroy
    @encounter = Encounter.find(params[:id])
    @encounter.destroy
    render json: @encounter, status: 200
  end

end
