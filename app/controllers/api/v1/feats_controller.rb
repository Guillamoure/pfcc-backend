class Api::V1::FeatsController < ApplicationController

  def index
    @feats = Feat.all.map do |feat|
      FeatSerializer.new(feat)
    end

    render json: @feats
  end

  def show
    @feat = Feat.find(params[:id])
    render json: FeatSerializer.new(@feat), status: 200
  end

end
