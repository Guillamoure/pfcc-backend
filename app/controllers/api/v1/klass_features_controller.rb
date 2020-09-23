class Api::V1::KlassFeaturesController < ApplicationController

  def show
    @klass_feature = Klass.find(params[:id]).klass_features
    render json: @klass_feature, status: 200
  end

  def create
    @klass_feature = KlassFeature.create(name: params["features"]["name"], klass_id: params["klass_id"],  description: params["features"]["description"])
    if @klass_feature.valid?

      render json: { klass_feature: KlassFeatureSerializer.new(@klass_feature) }, status: 201
    else
      render json: {error: "Could not create" }, status: 401
    end
  end

  def update
    @klass_feature = KlassFeature.find(params["klass_feature_id"])
    @klass_feature.update(name: params["features"]["name"], description: params["features"]["description"])
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

  def usage_update
    @ckfu = CharacterKlassFeatureUsage.find_or_create_by(character_id: params[:character_id], klass_feature_id: params[:klass_feature_id], feature_usage_id: params[:feature_usage_id])
    puts params

    @ckfu.update(current_usage: params[:current_usage])

    render json: @ckfu, status: 200
  end

  def klass_specializations
    @klass_feature = KlassFeature.find(params[:klass_id])
    @specializations = []
    @klass_feature.klass_specializations.each do |kspec|
      @specializations.push(KlassSpecializationSerializer.new(kspec))
    end
    render json: @specializations, status: 200
  end

  def create_character_klass_specialization
    if params[:id]
      @char_kspec = CharacterKlassSpecialization.find(params[:id])
      @char_kspec.update(klass_feature_klass_specialization_id: params[:klass_feature_klass_specialization_id])
    else
      @char_kspec = CharacterKlassSpecialization.create(character_id: params[:character_id], klass_feature_klass_specialization_id: params[:klass_feature_klass_specialization_id])
    end
    render json: @char_kspec, status: 201
  end

  def delete_character_klass_specialization
    @char_kspec = CharacterKlassSpecialization.find(params[:id])
    @char_kspec.destroy()
    render json: @char_kspec, status: 200
  end

end
