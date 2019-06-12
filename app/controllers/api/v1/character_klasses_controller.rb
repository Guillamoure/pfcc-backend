class Api::V1::CharacterKlassesController < ApplicationController

  def create
    @character_klass = CharacterKlass.create(character_id: params[:character_id], klass_id: params[:klass_id])
    if @character_klass.valid?

      render json: { characterClass: CharacterKlassSerializer.new(@character_klass) }, status: 201
    else
      render json: { error: "Could not create" }, status: 400
    end
  end

end
