class Api::V1::KnownSpellsController < ApplicationController

  def index
    @ch = Character.find(params[:character])
    @spells = @ch.known_spells.map do |ks|
      KnownSpellSerializer.new(ks)
    end
    render json: @spells, status: 200
  end

  def create
    @known_spell = CharacterKnownSpell.new(spell_list_spell_id: params[:spell_list_spell_id], character_id: params[:character_id], feature_spellcasting_id: params[:feature_spellcasting_id])
    if @known_spell.valid?
      @known_spell.save
      render json: {response: "Known Spell was created", id: @known_spell.id}, status: 201
    else
      render json: {response: "Known Spell was not created.", errors: @known_spell.errors.full_messages}, status: 400
    end
  end

  def destroy
    @known_spell = CharacterKnownSpell.find(params[:id])
    @known_spell.destroy
    render json: {response: "Known Spell was deleted", id: @known_spell.id}, status: 202
  end

end
