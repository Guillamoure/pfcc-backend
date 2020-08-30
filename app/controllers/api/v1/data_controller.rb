class Api::V1::DataController < ApplicationController
  def all
    @classes = Klass.includes(
      {klass_features: [
        :feature_levels, :feature_options, :features, :spellcasting, :actions
      ]},
      :class_skillset_skills, :skills, :spells_per_days, :favored_klass_bonuses, :prepared_amounts
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

    render json: @everything
  end
end
