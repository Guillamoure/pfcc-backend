class Api::V1::CastSpellsController < ApplicationController

  def create
    if params[:prepared] && params[:spell_level] != 0
      @psp = PreparedSpell.find(params[:id])
      @psp.update(cast: true)
      render json: @psp, status: 201
    else
      @cs = CastSpell.create!(character_id: params[:character_id], klass_id: params[:klass_id], spell_level: params[:spell_level])
      render json: @cs, status: 201
    end
  end

  def rollback

  end


end
