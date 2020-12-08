class Api::V1::CharacterKlassesController < ApplicationController

  def create
    class_array = []
    counter = 1
    params[:classes].each do |id|
      klass = Klass.find(id)
      if CharacterKlass.where(character_id: params[:character_id]).length == 0
        hp = klass.hit_die
      else
        hp = params[:hp]
      end
      @character_klass = CharacterKlass.create(character_id: params[:character_id], klass_id: id, level: counter, hp: hp)
      if @character_klass.valid?
        class_array.push(CharacterKlassSerializer.new(@character_klass))
      else
        render json: { error: "Could not create" }, status: 400
      end
      ++counter
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

  def create_character_klass_archetype
    archetypes_array = []
    params[:archetypes].each do |id|
      @cka = CharacterKlassArchetype.create!(character_id: params[:character_id], klass_archetype_id: id)
      if @cka.valid?
        archetypes_array.push(KlassArchetypeSerializer.new(@cka.klass_archetype))
      else
        render json: { error: "Could not create" }, status: 400
      end
    end

    render json: archetypes_array
  end

end
