class Api::V1::KlassFeaturesController < ApplicationController

  def create
    @klass_feature = KlassFeature.create(name: params["features"]["name"], klass_id: params["klass_id"], level_learned: params["features"]["level_learned"], description: params["features"]["description"])
    if @klass_feature.valid?

      render json: { klass_feature: KlassFeatureSerializer.new(@klass_feature) }, status: 201
    else
      render json: {error: "Could not create" }, status: 401
    end
  end

  def update
    @klass_feature = KlassFeature.find(params["klass_feature_id"])
    @klass_feature.update(name: params["features"]["name"], level_learned: params["features"]["level_learned"], description: params["features"]["description"])
    if @klass_feature.valid?
      render json: { klass_feature: KlassFeatureSerializer.new(@klass_feature) }, status: 201
    else
      render json: {error: "Could not edit" }, status: 401
    end
  end

  def destroy
    @klass_feature = KlassFeature.find(params["klass_feature_id"])
    id = @klass_feature.id
    @klass_feature.destroy
    render json: id, status: 201
  end

end
