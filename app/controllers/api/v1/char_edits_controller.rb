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

end
