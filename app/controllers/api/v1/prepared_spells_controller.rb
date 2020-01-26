class Api::V1::PreparedSpellsController < ApplicationController

  def show
    @prepared = Character.find(params[:id]).prepared_spells

    if !@prepared.empty?
      prepared = @prepared.map do |ps|
        PreparedSpellSerializer.new(ps)
      end

      render json: prepared, status: 200
    else
      render json: {error: "Could not find" }, status: 401
    end
  end

  def create
    @prepared_spells = params[:spells].map do |sp|
      @ps = PreparedSpell.create(klass_spell_id: sp[:known_spell_id], character_id: params[:character_id], spell_level: sp[:level], cast: false, klass_id: sp[:klass])
      if @ps
        PreparedSpellSerializer.new(@ps)
      else
        render json: {error: "Could not prepare spell"}, status: 401
      end
    end

    if params[:is_done_preparing_spells]
      @char = Character.find(params[:character_id])
      @char.update(is_done_preparing_spells: true)
    end

    render json: @prepared_spells, status: 201
  end

  def destroy
    @ps = PreparedSpell.find(params[:id])
    if @ps
      @ps.destroy
      render json: {response: "Spell #{@ps.klass_spell.spell.name} has been removed from the list of your prepared spells"}
    else
      render json: {error: "Could not find spell to delete"}
    end
  end

end
