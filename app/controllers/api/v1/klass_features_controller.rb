class Api::V1::KlassFeaturesController < ApplicationController

  def create
    @klass_feature = KlassFeature.create(name: params["features"]["name"], klass_id: params["klass_id"], level_learned: params["features"]["level_learned"], description: params["features"]["description"])
    if @klass_feature.valid?
      
      render json: { klass_feature: KlassFeatureSerializer.new(@klass_feature) }, status: 200
    else
      render json: {error: "Could not create" }, status: 401
    end
  end

end
