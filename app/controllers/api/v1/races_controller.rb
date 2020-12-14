class Api::V1::RacesController < ApplicationController

  def index
    @races = Race.all
    render json: @races
  end

  def show
    @race = Race.find_by(name: params["id"])
    if params[:id] && !@race
      @race = Race.find(params[:id])
    end
    render json: @race
  end

  def create
    @race = Race.create(name: params[:race][:name], description: params[:race][:description], size: params[:race][:size], speed: params[:race][:speed], img_url: params[:race][:img_url])

    if @race.valid?
      params[:abilityScoreModifiers].each do |mod|
        RaceAbilityScoreModifier.create(race_id: @race.id, ability_score: mod[:ability_score], bonus: mod[:bonus])

      end
      render json: { race: RaceSerializer.new(@race) }, status: 201
    else
      render json: { error: "Could not create" }, status: 400
    end
  end

  def update
    @race = Race.find(params["race_id"])
    @race.update(name: params[:updates][:name], description: params[:updates][:description], size: params[:updates][:size], speed: params[:updates][:speed], img_url: params[:race][:img_url])
    if @race.valid?
      @modifiers = RaceAbilityScoreModifier.where(race_id: @race.id)
      deleteRemovedModifiers(@modifiers, params[:updates][:abilityScoreModifiers])

      params[:updates][:abilityScoreModifiers].each do |mod|
        @raceMod = RaceAbilityScoreModifier.find_or_create_by(id: mod[:id])
        @raceMod.update(race_id: @race.id, ability_score: mod[:ability_score], bonus: mod[:bonus])
      end
      render json: { race: RaceSerializer.new(@race) }, status: 201
    else
      render json: { error: "Could not edit. Please complete all of the fields" }, status: 400
    end
  end

  def destroy
    @race = Race.find(params[:race_id])
    id = @race.id
    @race.destroy
    render json: id, status: 202
  end


  def deleteRemovedModifiers(saved_mods, sent_mods)
    remapped_save = saved_mods.map do |mod|
      mod.id
    end
    remapped_sent = sent_mods.map do |mod|
      mod["id"]
    end
    remapped_save.each do |saved|
      if !remapped_sent.include?(saved)
        @mod = RaceAbilityScoreModifier.find(saved)
        @mod.destroy
      end
    end
  end

end
