class Api::V1::EffectsController < ApplicationController

  def spellcasting
    @spellcasting = Spellcasting.create!(ability_score: params[:ability_score], limited: params[:limited], prepared: params[:prepared], klass_feature_id: params[:klass_feature_id])
    if @spellcasting.valid?
      render json: {klass: KlassSerializer.new(@spellcasting.klass_feature.klass) }, status: 201
    else
      render json: { error: "Could not create"}, status: 401
    end
  end

end
