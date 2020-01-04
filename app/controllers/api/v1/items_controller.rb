class Api::V1::ItemsController < ApplicationController

  def index
    term = params[:q]
    cap = term.split(" ").map do |t|
      if t == "of" || t == 'the'
        t
      else
        t.capitalize
      end
    end.join(" ")
    items = []
    MagicItem.all.each do |mi|
      applicable = false
      if mi.name.include?(term)
        applicable = true
      end
      if mi.name.include?(cap)
        applicable = true
      end
      if applicable
        items.push(mi)
      end
    end
    render json: items
  end


  def create
    character_item = nil
    magic_item = MagicItem.find(params[:item][:id])

    if magic_item
      character_item = CharacterMagicItem.create!(character_id: params[:character_id], magic_item_id: magic_item.id)
    end

    if character_item
      render json: character_item
    end
  end

end
