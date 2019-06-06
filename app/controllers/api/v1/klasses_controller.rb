class Api::V1::KlassesController < ApplicationController

  def index
    @klasses = Klass.all
    render json: @klasses
  end

  def show
    @klass = Klass.find_by(name: params["id"])
    render json: @klass

  end

  def create
    @klass = Klass.create(name: params["name"], description: params["description"], hit_die: params["hit_die"], skill_ranks: params["skill_ranks"])

    if @klass.valid?

      render json: { klass: KlassSerializer.new(@klass) }, status: 200
    else
      render json: { error: "Could not create" }, status: 401
    end
  end

  def update
    @klass = Klass.find(params["klass_id"])
    @klass.update(name: params["updates"]["name"], hit_die: params["updates"]["hit_die"], description: params["updates"]["description"], skill_ranks: params["updates"]["skill_ranks"])
    if @klass.valid?
      render json: { klass: KlassSerializer.new(@klass) }, status: 201
    else
      render json: {error: "Could not edit. Please complete all of fields." }, status: 402
    end
  end

  def destroy
    @klass = Klass.find(params["klass_id"])
    id = @klass.id
    @klass.destroy
    render json: id, status: 201
  end

end
