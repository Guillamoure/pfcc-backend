class Api::V1::CreaturesController < ApplicationController

  def index
    @creatures = Creature.all.map do |creature|
      CreatureSerializer.new(creature)
    end

    render json: @creatures
  end

  def show
    @creature = Creature.find(params[:id])
    render json: CreatureSerializer.new(@creature), status: 200
  end

end
