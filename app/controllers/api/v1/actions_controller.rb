class Api::V1::ActionsController < ApplicationController

  def index
    @actions = Action.all
    render json: @actions, root: "Action"
  end


end
