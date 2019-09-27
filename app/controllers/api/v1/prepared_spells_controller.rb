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

end
