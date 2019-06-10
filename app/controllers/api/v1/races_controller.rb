class Api::V1::RacesController < ApplicationController

  def index
    @races = Race.all
    render json: @races
  end

  def show
    @race = Race.find_by(name: params["id"])
    render json: @race
  end

  def create
    @race = Race.create(name: params[:race][:name], description: params[:race][:description], size: params[:race][:size], speed: params[:race][:speed])

    if @race.valid?
      params[:abilityScoreModifiers].each do |mod|
        RaceAbilityScoreModifier.create(race_id: @race.id, ability_score: mod[:ability_score], bonus: mod[:bonus])

      end
      render json: { race: RaceSerializer.new(@race) }, status: 201
    else
      render json: { error: "Could not create" }, status: 401
    end
  end

end
