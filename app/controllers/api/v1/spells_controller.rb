class Api::V1::SpellsController < ApplicationController

  def index
    if params[:spell_list_id]
      spells = Spell.joins(:spell_list_spells).where('spell_list_spells.spell_list_id' => params[:spell_list_id])
    else
      spells = Spell.all
    end
    @spells = spells.map do |sp|
      SpellSerializer.new(sp)
    end
    render json: @spells, status: 200
  end

  def show
    @spell = Spell.find(params[:id])
    render json: { spell: SpellSerializer.new(@spell) }, status: 200
  end


end
