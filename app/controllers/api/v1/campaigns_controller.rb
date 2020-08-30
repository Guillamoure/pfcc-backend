class Api::V1::CampaignsController < ApplicationController

  def new
    @calendars = Calendar.all
    serialized_calendars = @calendars.map do |c|
      NewCampaignSerializer.new(c)
    end

    @races = Race.all
    serialized_races = @races.map do |m|
      MinimalRaceSerializer.new(m)
    end

    @klasses = Klass.all
    serialized_klasses = @klasses.map do |m|
      MinimalKlassSerializer.new(m)
    end

    @skillsets = Skillset.all
    serialized_skillsets = @skillsets.map do |sk|
      MinimalSkillsetSerializer.new(sk)
    end
    render json: {calendars: serialized_calendars, races: serialized_races, klasses: serialized_klasses, skillsets: serialized_skillsets}
  end
  # t.string "name"
  # t.integer "dm_id"
  # t.integer "calendar_id"
  # t.string "theme"
  # t.string "setting"
  # t.integer "starting_level"
  # t.integer "skillset_id"
  # t.string "custom_notes"
  # t.string "starting_month"
  # t.string "starting_weekday"
  # t.integer "starting_day"
  # t.integer "starting_year"
  # t.string "starting_age"
  # t.string "current_month"
  # t.string "current_weekday"
  # t.integer "current_day"
  # t.integer "current_year"
  # t.string "current_age"

  def create
    @campaign = Campaign.create!(name: params[:name], dm_id: params[:dm_id], theme: params[:theme], setting: params[:setting], calendar_id: params[:calendar_id], starting_level: params[:starting_level], skillset_id: params[:skillset_id], custom_notes: params[:custom_notes], starting_month: params[:month], starting_weekday: params[:weekday], starting_day: params[:day], starting_year: params[:year], starting_age: params[:age], current_month: params[:month], current_weekday: params[:weekday], current_day: params[:day], current_year: params[:year], current_age: params[:age])

    params[:race_ids].each do |ri|
      CampaignRace.create!(campaign_id: @campaign.id, race_id: ri)
    end

    params[:klass_ids].each do |ki|
      CampaignKlass.create!(campaign_id: @campaign.id, klass_id: ki)
    end

    render json: @campaign, status: 201

  end

  def date_change
    @campaign = Campaign.find(params[:id])
    @campaign.update(campaign_params)
    render json: @campaign, status: 202
  end

  private

  def campaign_params
    params.require(:campaign).permit(:weekday, :month, :day, :age, :year)
  end
end
