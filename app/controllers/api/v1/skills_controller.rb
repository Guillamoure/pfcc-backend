class Api::V1::SkillsController < ApplicationController

  def index
    @skills = Skill.all
    render json: @skills, status: 200
  end

  def show
    @skill = Skill.find_by(name: params[:id])
    if params[:id]
      @skill = Skill.find(params[:id])
    end
    render json: { skill: SkillSerializer.new(@skill) }, status: 200
  end

  def create
    @skill = Skill.create(name: params["name"], description: params["description"], ability_score: params["abilityScore"], untrained: params["untrained"])

    if @skill.valid?

      render json: { skill: SkillSerializer.new(@skill) }, status: 200
    else
      render json: { error: "Could not create" }, status: 401
    end
  end

end
