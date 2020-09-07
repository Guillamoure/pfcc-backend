class Api::V1::CastSpellsController < ApplicationController

  def create
    if params[:expendable]
      @psp = PreparedSpell.find(params[:id])
      @psp.update(cast: true)
      render json: @psp, status: 201
    else
      @cs = CastSpell.create!(character_id: params[:character_id], feature_spellcasting_id: params[:feature_spellcasting_id], spell_level: params[:spell_level])
      render json: @cs, status: 201
    end
  end

  def rollback

  end


end
