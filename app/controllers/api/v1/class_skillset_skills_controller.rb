class Api::V1::ClassSkillsetSkillsController < ApplicationController


  def create
    params[:skills].each do |skill_id|
      ClassSkillsetSkill.create(klass_id: params[:klass_id], skillset_id: params[:skillset_id], skill_id: skill_id)
    end
    @klass = Klass.find(params[:klass_id])
    if @klass.valid?

      render json: { klass: KlassSerializer.new(@klass) }, status: 200
    else
      render json: { error: "Could not get data" }, status: 401
    end
  end

  def update
    @class_skillset_skills = Klass.find(params[:klass_id]).class_skillset_skills
    @class_skillset_skills.each do |csss|
      if !params[:skills].include?(csss.skill_id)
        csss.destroy
      end
    end

    current_skill_ids = @class_skillset_skills.map {|csss| csss.skill_id}

    params[:skills].each do |skill_id|
      if confirm_skillset_class_skill(skill_id, current_skill_ids, @class_skillset_skills, params[:skillset_id])
        ClassSkillsetSkill.create(klass_id: params[:klass_id], skillset_id: params[:skillset_id], skill_id: skill_id)
      end
    end

    @klass = Klass.find(params[:klass_id])
    if @klass.valid?

      render json: { klass: KlassSerializer.new(@klass) }, status: 200
    else
      render json: { error: "Could not get data" }, status: 401
    end

  end

  private

  def confirm_skillset_class_skill(skill_id, current_skill_ids, class_skillset_skills, skillset_id)
    # first = !current_skill_ids.include?(skill_id)

    # goes through all class_skills for a given class, and pulls out the queried skill
    applicable_skills = class_skillset_skills.select {|csss| csss.skill_id == skill_id}

    # checks to see if that class_skill has the same skillset as the one sent down
    does_the_skillset_have_that_class_skill = applicable_skills.find {|csss| csss.skillset_id == skillset_id}

    #the above method returns an array, either with a class_skill that has a given array, or an empty array
    #if the array is empty, return true, if it has something, do nothing
    !(does_the_skillset_have_that_class_skill)



  end

end
