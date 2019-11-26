class Api::V1::SpellsController < ApplicationController

  def index
    spells = Spell.all
    @spells = spells.map do |sp|
      SpellSerializer.new(sp)
    end
    render json: @spells, status: 200
  end


end
