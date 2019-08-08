class Api::V1::SkillsetsController < ApplicationController

  def index
    @skillset = Skillset.all
    render json: @skillset
  end

  def show
    @skillset = Skillset.find(params[:id])
    render json: { skillset: SkillsetSerializer.new(@skillset) }, status: 200
  end
  #
  # def show
  #   @klass = Klass.find_by(name: params["id"])
  #   render json: @klass
  #
  # end
  #
  def create
    @skillset = Skillset.create(name: params[:skillset][:name])
    params[:chosen_skills].each do |skill_id|
      SkillsetSkill.create(skill_id: skill_id, skillset_id: @skillset.id)
    end
    if @skillset.valid?
      render json: { skillset: SkillsetSerializer.new(@skillset) }, status: 200
    else
      render json: { error: "Could not create" }, status: 401
    end
  end

  def update
    @skillset = Skillset.find(params[:id])
    @skillset.update(name: params[:skillset][:name])

    @skillset.skillset_skills.each do |sss|
      if !params[:chosen_skills].include?(sss.skill_id)
        sss.destroy
      end
    end

    current_skill_ids = @skillset.skillset_skills.map {|sss| sss.skill_id}

    params[:chosen_skills].each do |skill_id|
      if !current_skill_ids.include?(skill_id)
        SkillsetSkill.create(skill_id: skill_id, skillset_id: @skillset.id)
      end
    end
    if @skillset.valid?
      render json: { skillset: SkillsetSerializer.new(@skillset) }, status: 200
    else
      render json: { error: "Could not edit" }, status: 401
    end

  end

  def destroy
    @skillset = Skillset.find(params[:id])
    id = @skillset.id
    @skillset.destroy
    render json: id, status: 201
  end

end
