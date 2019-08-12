class Api::V1::CharacterKlassesController < ApplicationController

  def create
    byebug
    class_array = []
    params[:classes].each do |id|
      @character_klass = CharacterKlass.create(character_id: params[:character_id], klass_id: id)
      if @character_klass.valid?
        class_array.push(CharacterKlassSerializer.new(@character_klass))
      else
        render json: { error: "Could not create" }, status: 400
      end
    end
    render json: class_array
    # @character_klass = CharacterKlass.create(character_id: params[:character_id], klass_id: params[:classes])
    # if @character_klass.valid?
    #
    #   render json: { characterClass: CharacterKlassSerializer.new(@character_klass) }, status: 201
    # else
    #   render json: { error: "Could not create" }, status: 400
    # end
  end

end
