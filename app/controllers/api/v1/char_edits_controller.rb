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
      @char_klasses = @character.character_klasses
    #   # deleteRemovedKlasses(@char_klasses, params[:char_edit][:classes])
      counter = 1
      # iterate over the array of klass ids we recieved from the backend
      params[:char_edit][:classes].each do |id|
        # find the first character_klass that shares that same level as the counter
        @char_klass = @char_klasses.find_by(level: counter, character_id: @character.id)
        if @char_klass == nil
          # if that character_klass doesn't exist, create it with the klass_id being the element of the array
          CharacterKlass.create(level: counter, character_id: @character.id, klass_id: id)
        elsif @char_klass.klass_id != id
          # if the klass does exist, but it has a different klass_id than element of the array, destroy it
          @char_klass.destroy
          # and create a new one based on the element of the array
          CharacterKlass.create(level: counter, character_id: @character.id, klass_id: id)
        end
        # count up the array
        counter += 1
      end
      # if the amount of stored character_klasses are longer than the array that we recieved
      if @character.character_klasses.length > params[:char_edit][:classes].length
        @character.character_klasses.each do |char_klass|
          # iterate. if the level of a given klass is longer than the array of ids we recieved, destroy it
          if char_klass.level > params[:char_edit][:classes].length
            char_klass.destroy
          end
        end
      end
      # finally, go over the character_klasses of the character
      @character.character_klasses.each_with_index do |ck, idx|
        # grab that level
        level = ck.level
        # if there are multiples of that level
        multiples = @character.character_klasses.where(level: level)
        if multiples.length > 1
          # iterate
          multiples.each do |char_klass|
            # if that character_klass has a klass id that does not match with array of ids that we recieved
            correct_klass_id = params[:char_edit][:classes][level - 1].to_i
            if char_klass.klass_id != correct_klass_id
              char_klass.destroy
            end
          end
        end
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

  def hp
    @character = Character.find(params[:char_edit][:character_id])
    @character.character_klasses.each do |ck|
      ck.update(hp: params[:char_edit][:hp][ck.level - 1])
    end
    if @character.valid?
      render json: { character: CharacterSerializer.new(@character) }, status: 201
      else
      render json: { error: "Could not update" }, status: 401
    end


  end

end
