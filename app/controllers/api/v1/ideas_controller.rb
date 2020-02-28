class Api::V1::IdeasController < ApplicationController

  def index
    @ideas = []
    if params[:id].to_i >= Idea.all.length
      render json: Idea.all.pluck([:content]).shuffle
    elsif params[:id].to_i >= (Idea.all.length/2).ceil
      @ideas = Idea.all.pluck([:content])
      (Idea.all.length - params[:id].to_i).times do
        @ideas.shuffle
        @ideas.pop
      end
      render json: @ideas
    else
      while @ideas.length < params[:id].to_i
        proposed_idea = Idea.all.sample
        if !@ideas.include?(proposed_idea.content)
          @ideas << proposed_idea.content
        end
      end
      render json: @ideas
    end
  end

end
