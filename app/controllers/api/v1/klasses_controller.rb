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


end
