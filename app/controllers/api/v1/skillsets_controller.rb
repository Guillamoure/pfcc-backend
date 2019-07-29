class Api::V1::SkillsetsController < ApplicationController

  def index
    @skillset = Skillset.all
    render json: @skillset
  end
  #
  # def show
  #   @klass = Klass.find_by(name: params["id"])
  #   render json: @klass
  #
  # end
  #
  def create
    byebug
    @skillset = Skillset.create(name: params[:skillset][:name])
    params[:chosen_skills].each do |skill_id|
      SkillsetSkill.create(skill_id: skill_id, skillset_id: @skillset.id)
    end
    byebug
    if @skillset.valid?
      render json: { skillset: SkillsetSerializer.new(@skillset) }, status: 200
    else
      render json: { error: "Could not create" }, status: 401
    end
  end

  # def update
  #   @klass = Klass.find(params["klass_id"])
  #   @klass.update(name: params["updates"]["name"], hit_die: params["updates"]["hit_die"], description: params["updates"]["description"], skill_ranks: params["updates"]["skill_ranks"], fortitude: params["updates"]["fortitude"], reflex: params["updates"]["reflex"], will: params["updates"]["will"], img_url: params["updates"]["img_url"])
  #   if @klass.valid?
  #     render json: { klass: KlassSerializer.new(@klass) }, status: 201
  #   else
  #     render json: {error: "Could not edit. Please complete all of the fields." }, status: 402
  #   end
  # end
  #
  # def destroy
  #   @klass = Klass.find(params["klass_id"])
  #   id = @klass.id
  #   @klass.destroy
  #   render json: id, status: 201
  # end

end
