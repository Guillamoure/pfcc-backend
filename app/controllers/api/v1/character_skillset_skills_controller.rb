class Api::V1::CharacterSkillsetSkillsController < ApplicationController


  def ranks
    params[:character_skillset_skill][:ranks].each do |skill|
      if skill[1] != 0
        @skill = CharacterSkillsetSkill.find_by(skill_id: skill[0], character_id: params[:character_skillset_skill][:character_id], skillset_id: params[:character_skillset_skill][:skillset_id])
        if @skill == nil
          CharacterSkillsetSkill.create(skill_id: skill[0], character_id: params[:character_skillset_skill][:character_id], skillset_id: params[:character_skillset_skill][:skillset_id], ranks: skill[1])
        else
          @skill.update(ranks: skill[1])
        end
      end
    end
    @character = Character.find(params[:character_skillset_skill][:character_id])
    render json: { character: CharacterSerializer.new(@character) }, status: 201
  end


end
