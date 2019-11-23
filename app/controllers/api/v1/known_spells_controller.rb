class Api::V1::KnownSpellsController < ApplicationController

  def index
    @ch = Character.find(params[:character])
    @spells = @ch.known_spells.map do |ks|
      ks.klass_spell.spell
    end
    render json: @spells, status: 201
  end

end
