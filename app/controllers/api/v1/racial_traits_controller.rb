class Api::V1::RacialTraitsController < ApplicationController




  def create
    byebug
    @racial_trait = RacialTrait.create(name: params["traits"]["name"], race_id: params["race_id"], description: params["traits"]["description"])
    if @racial_trait.valid?

      render json: { racial_trait: @racial_trait }, status: 201
    else
      render json: {error: "Could not create" }, status: 401
    end
  end


end
