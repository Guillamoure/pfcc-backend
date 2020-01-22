class Api::V1::CampaignsController < ApplicationController

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
