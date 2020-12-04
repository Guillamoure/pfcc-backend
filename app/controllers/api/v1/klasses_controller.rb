class Api::V1::KlassesController < ApplicationController

  def index
    @klasses = Klass.all
    render json: @klasses
  end

  def show
    @klass = Klass.find_by(name: params["id"])
    if !@klass
      @klass = Klass.find(params[:id])
    end
    render json: { klass: KlassSerializer.new(@klass) }, status: 200
  end

  def create
    @klass = Klass.create(name: params["name"], description: params["description"], hit_die: params["hit_die"], skill_ranks: params["skill_ranks"], fortitude: params["fortitude"], reflex: params["reflex"], will: params["will"], img_url: params["img_url"])

    if @klass.valid?

      render json: { klass: KlassSerializer.new(@klass) }, status: 200
    else
      render json: { error: "Could not create" }, status: 401
    end
  end

  def update
    @klass = Klass.find(params["klass_id"])
    @klass.update(name: params["updates"]["name"], hit_die: params["updates"]["hit_die"], description: params["updates"]["description"], skill_ranks: params["updates"]["skill_ranks"], fortitude: params["updates"]["fortitude"], reflex: params["updates"]["reflex"], will: params["updates"]["will"], img_url: params["updates"]["img_url"])
    if @klass.valid?
      render json: { klass: KlassSerializer.new(@klass) }, status: 201
    else
      render json: {error: "Could not edit. Please complete all of the fields." }, status: 402
    end
  end

  def destroy
    @klass = Klass.find(params["klass_id"])
    id = @klass.id
    @klass.destroy
    render json: id, status: 201
  end

  def spells
    params[:spells_per_day].each do |sp_lvl, sp_day|
      sp_day.each_with_index do |amount, index|
        if amount.to_i > 0
          @spd = SpellsPerDay.create!(spell_level: sp_lvl, klass_level: index + 1, klass_id: params[:klass_id], spells: amount)
        end
      end
    end
    @klass = Klass.find(params[:klass_id])
    render json: { klass: KlassSerializer.new(@klass) }, status: 201
  end

  def archetypes
    @klass = Klass.find(params[:id])
    @archetypes = @klass.archetypes
    @archetypes = @archetypes.map do |arch|
      KlassArchetypeSerializer.new(arch)
    end
    # byebug

    render json: @archetypes
  end

end
