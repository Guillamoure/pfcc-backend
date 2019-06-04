class Api::V1::KlassesController < ApplicationController

  def index
    @klass = Klass.all
    render json: @klass
  end

end
