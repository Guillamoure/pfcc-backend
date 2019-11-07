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
