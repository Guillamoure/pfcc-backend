class CampaignsChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    stream_for "Campaign-#{params[:campaign_code]}"
  end

  def receive(data)
    puts("-----")
    puts(params)
    puts("-----")
    CampaignsChannel.broadcast_to("Campaign-#{params[:campaign_code]}", {data: data})
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
