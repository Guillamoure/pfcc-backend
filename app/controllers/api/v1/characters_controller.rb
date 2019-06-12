class Api::V1::CharactersController < ApplicationController

  def index
    @user = User.find( request.headers['User'])
    @characters = @user.characters
    render json: @characters, status: 200
  end

  def show
    @character = Character.find(params[:id])
    render json: { character: CharacterSerializer.new(@character) }, status: 200
  end

  def create
    @character = Character.create(name: params[:character][:name], description: params[:character][:description], user_id: params[:user_id], strength: params[:character][:strength], dexterity: params[:character][:dexterity], constitution: params[:character][:constitution], intelligence: params[:character][:intelligence], wisdom: params[:character][:wisdom], charisma: params[:character][:charisma], race_id: params[:character][:race])
    if @character.valid?
      render json: { character: CharacterSerializer.new(@character) }, status: 201
    else
      render json: { error: "Could not create" }, status: 400
    end
  end

end
