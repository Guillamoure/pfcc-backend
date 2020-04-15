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
    render json: {calendars: serialized_calendars, races: serialized_races, klasses: serialized_klasses}
  end

  def create
    @campaign = Campaign.create!(name: params[:name], dm_id: params[:dm_id], theme: params[:theme], setting: params[:setting])

    params[:race_ids].each do |ri|
      CampaignRace.create!(campaign_id: @campaign.id, race_id: ri)
    end
    
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
