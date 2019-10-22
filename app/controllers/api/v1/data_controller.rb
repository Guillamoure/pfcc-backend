class Api::V1::DataController < ApplicationController
  def all
    @classes = Klass.all
    @races = Race.all
    @everything = {}
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
