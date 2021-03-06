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
    render json: id, status: 200
  end

  def usage_update
    @ckfu = CharacterKlassFeatureUsage.find_or_create_by(character_id: params[:character_id], klass_feature_id: params[:klass_feature_id], feature_usage_id: params[:feature_usage_id])
    puts params

    @ckfu.update(current_usage: params[:current_usage])

    render json: @ckfu, status: 200
  end

  def klass_specialization_usage_update
    @cksfu = CharacterKlassSpecializationFeatureUsage.find_or_create_by(character_id: params[:character_id], klass_specialization_feature_id: params[:klass_specialization_feature_id], feature_usage_id: params[:feature_usage_id])
    puts params

    @cksfu.update(current_usage: params[:current_usage])

    render json: @cksfu, status: 200
  end

  def klass_archetype_usage_update
    @ckafu = CharacterKlassArchetypeFeatureUsage.find_or_create_by(character_id: params[:character_id], klass_archetype_feature_id: params[:klass_archetype_feature_id], feature_usage_id: params[:feature_usage_id])
    puts params

    @ckafu.update(current_usage: params[:current_usage])

    render json: @ckafu, status: 200
  end

  def klass_specializations
    if params[:id]
      @klass_feature = KlassFeature.find(params[:id])
    else
      @klass_feature = KlassFeature.find(params[:klass_id])
    end
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
    kspec_features = @char_kspec.klass_specialization.klass_specialization_features.map do |ksf|
      KlassSpecializationFeatureSerializer.new(ksf)
    end
    @serialized_char_kspec = {
      id: @char_kspec.klass_specialization.id,
      name: @char_kspec.klass_specialization.name,
      klass_feature: @char_kspec.klass_feature,
      klass_specialization_features: kspec_features,
      character_klass_specialization_id: @char_kspec.id
    }
    render json: @serialized_char_kspec, status: 201
  end

  def delete_character_klass_specialization
    @char_kspec = CharacterKlassSpecialization.find(params[:id])
    @char_kspec.destroy()
    render json: @char_kspec, status: 200
  end

end
