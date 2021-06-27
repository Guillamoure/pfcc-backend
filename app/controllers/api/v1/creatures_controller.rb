class Api::V1::CreaturesController < ApplicationController

  def index
    @creatures = Creature.all
    serialized_creatures = @creatures.map do |creature|
      CreatureSerializer.new(creature)
    end

    render json: serialized_creatures, root: "Creature"
  end

  def show
    @creature = Creature.find(params[:id])
    render json: CreatureSerializer.new(@creature), status: 200
  end

end
