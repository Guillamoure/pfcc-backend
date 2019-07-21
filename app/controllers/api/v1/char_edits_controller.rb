class Api::V1::CharEditsController < ApplicationController

  def background
    @character = Character.find(params[:char_edit][:id])
    @character.update(age: params[:char_edit][:age], background: params[:char_edit][:background], alignment: params[:char_edit][:alignment], homeland: params[:char_edit][:homeland], deity: params[:char_edit][:deity])
    if @character.valid?
      render json: { character: CharacterSerializer.new(@character) }, status: 201
      else
      render json: { error: "Could not update" }, status: 401
    end
  end

  def character
    @character = Character.find(params[:char_edit][:id])
    @character.update(name: params[:char_edit][:name], race_id: params[:char_edit][:race], any_bonus: params[:char_edit][:anyBonus])


    if @character.valid?
      @char_klasses = CharacterKlass.where(character_id: @character.id)
      deleteRemovedKlasses(@char_klasses, params[:char_edit][:classes])

      params[:char_edit][:classes].each do |klass|
        @char_klass = @char_klasses.find_or_create_by(klass_id: klass[:classId])
        @char_klass.update(level: klass[:level])
      end
      render json: { character: CharacterSerializer.new(@character) }, status: 201
    else
      render json: { error: "Could not update" }, status: 401
    end

  end

  def ability
    @character = Character.find(params[:char_edit][:id])
    @character.update(strength: params[:char_edit][:strength], dexterity: params[:char_edit][:dexterity], constitution: params[:char_edit][:constitution], intelligence: params[:char_edit][:intelligence], wisdom: params[:char_edit][:wisdom], charisma: params[:char_edit][:charisma])
    if @character.valid?
      render json: { character: CharacterSerializer.new(@character) }, status: 201
      else
      render json: { error: "Could not update" }, status: 401
    end
  end

  def deleteRemovedKlasses(saved_classes, updated_classes)

    remapped_saved = saved_classes.map do |klass|
      klass.id
    end
    remapped_updated = updated_classes.map do |klass|
      klass[:classId]
    end

    remapped_saved.each do |saved|
      if !remapped_updated.include?(saved)
        @char_klass = CharacterKlass.find(saved)
        @char_klass.destroy
      end
    end
  end

end
