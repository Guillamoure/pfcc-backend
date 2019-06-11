class Api::V1::RacialTraitsController < ApplicationController




  def create
    @racial_trait = RacialTrait.create(name: params["traits"]["name"], race_id: params["race_id"], description: params["traits"]["description"])
    if @racial_trait.valid?

      render json: { racial_trait: @racial_trait }, status: 201
    else
      render json: {error: "Could not create" }, status: 401
    end
  end

  def update
    @racial_trait = RacialTrait.find(params["racial_trait_id"])
    @racial_trait.update(name: params["traits"]["name"], description: params["traits"]["description"])
    if @racial_trait.valid?
      render json: { racial_trait: @racial_trait }, status: 201
    else
      render json: { error: "Could not edit" }, status: 401
    end
  end

  def destroy
    @racial_trait = RacialTrait.find(params["racial_trait_id"])
    id = @racial_trait.id
    @racial_trait.destroy
    render json: id, status: 201
  end

end
