class Api::V1::KlassesController < ApplicationController

  def index
    @klass = Klass.all
    render json: @klass
  end

  def create
    @klass = Klass.create(name: params["name"], description: params["description"], hit_die: params["hit_die"], skill_ranks: params["skill_ranks"])
    if @klass.valid?
      
      render json: { user: KlassSerializer.new(@klass) }, status: 200
    else
      render json: { error: "Could not authenticate"}, status: 401
    end
  end


end
