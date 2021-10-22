class Api::V1::DataController < ApplicationController
  def all
    @classes = Klass.includes(
      {klass_features: [
        :feature_levels, :features, :actions
      ]},
      :class_skillset_skills, :skills, :favored_klass_bonuses
    ).all
    @races = Race.includes(
      :racial_traits, :race_ability_score_modifiers, :favored_klass_bonuses, :source
    ).all
    @everything = {}

    puts "\n\n\n"
    puts "SERIALIZER"
    puts "\n\n\n"

    all_classes = @classes.map do |klass|
      KlassSerializer.new(klass)
    end
    @everything[:klasses] = all_classes
    all_races = @races.map do |race|
      RaceSerializer.new(race)
    end
    @everything[:races] = all_races

    all_skills = Skill.all.map do |skill|
      SkillSerializer.new(skill)
    end
    @everything[:skills] = all_skills

    render json: @everything
  end

  def latest_patch_note
    @patch_note = PatchNote.last
    render json: @patch_note
  end

  def patch_notes
    @patch_notes = PatchNote.all
    render json: @patch_notes
  end

  def create_patch_note
    @patch_note = PatchNote.new!(version: params[:version], description: params[:description])
    if @patch_note.valid?
      render json: { response: "Patch Note Version " + @patch_note.version + " created" }, status: 201
    else
      render json: @patch_note.errors.full_messages, status: 400
    end
  end

  def update_patch_note
    @patch_note = PatchNote.find(params[:id])
    @patch_note.update(patch_note_params)
    if @patch_note.valid?
      render json: { response: "Patch Note Version " + @patch_note.version + " updated" }, status: 200
    else
      render json: @patch_note.errors.full_messages, status: 400
    end
  end

  private

  def patch_note_params
    params.permit(:version, :description)
  end
end
