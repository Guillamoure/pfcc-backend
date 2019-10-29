class Api::V1::CastSpellsController < ApplicationController

  def create
    @cs = CastSpell.create!(character_id: params[:character_id], klass_id: params[:klass_id], spell_level: params[:spell_level])
    render json: @cs, status: 201
  end

end
