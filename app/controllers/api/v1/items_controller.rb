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
    @magic_item = MagicItem.find(params[:item][:id])

    if @magic_item
      @character_item = CharacterMagicItem.create!(character_id: params[:character_id], magic_item_id: @magic_item.id, false_desc: params[:desc])

      usages = @magic_item.features.select do |f|
        f.usage
      end

      if !usages.empty?
        @magic_item.features.each do |f|
          if f.usage
            if f.usage.options
              f.usage.options.each do |o|
                CharacterMagicItemFeatureUsageOption.create!(character_magic_item_id: @character_item.id, feature_usage_option_id: o.id)
              end
            end
            CharacterMagicItemFeatureUsage.create!(character_magic_item_id: @character_item.id, feature_usage_id: f.usage.id)
          end
        end
      end

      container = @magic_item.features.select do |f|
        f.feature_container
      end

      if !container.empty?
        @container = Container.create!()
        @character_magic_item_container = CharacterMagicItemContainer.create!(container_id: @container.id, character_magic_item_id: @character_item.id)
      end

    end

    if @character_item
      @user = User.find(params[:current_user])
      render json: { current_user: UserSerializer.new(@user) }, status: 200
    end
  end

  def mi_discovered
    @character_item = CharacterMagicItem.find(params[:id])
    @character_item.update(discovered: true)
    render json: { character: CharacterSerializer.new(@character_item.character) }, status: 202
  end

  def w_discovered
    @character_item = CharacterWeapon.find(params[:id])
    @character_item.update(discovered: true)
    render json: { character: CharacterSerializer.new(@character_item.character) }, status: 202
  end

  def mi_equip
    @character_item = CharacterMagicItem.find(params[:id])
    @character_item.update(equipped: !@character_item.equipped)
    # REFACTOR; THE FRONT END DOESN'T NEED ANY DATA, JUST A STATUS CODE
    render json: { character: CharacterSerializer.new(@character_item.character) }, status: 202
  end

  def w_equip
    @character_item = CharacterWeapon.find(params[:id])
    @character_item.update(equipped: !@character_item.equipped)
    # REFACTOR; THE FRONT END DOESN'T NEED ANY DATA, JUST A STATUS CODE
    render json: { character: CharacterSerializer.new(@character_item.character) }, status: 202
  end

  def mi_trade
    @character_item = CharacterMagicItem.find(params[:id])

    old_owner_id = @character_item.character_id
    @character = Character.find(old_owner_id)

    @character_item.update(character_id: params[:new_owner_id], equipped: false, discovered: false)
    render json: { character: CharacterSerializer.new(@character) }, status: 202
  end

  def w_trade
    @character_item = CharacterWeapon.find(params[:id])

    old_owner_id = @character_item.character_id
    @character = Character.find(old_owner_id)

    @character_item.update(character_id: params[:new_owner_id], equipped: false, discovered: false)
    render json: { character: CharacterSerializer.new(@character) }, status: 202
  end

  def known
    @character_item = CharacterMagicItem.find(params[:id])
    if @character_item
      @character_item.update(known: true)

      @user = User.find(params[:current_user])
      render json: { current_user: UserSerializer.new(@user) }, status: 200
    end
  end

  def usage_update
    @cmifu = CharacterMagicItemFeatureUsage.find(params[:id])
    new_num = @cmifu.current_usage.to_i + params[:item][:count]
    @cmifu.update(current_usage: new_num)
    render json: { character: CharacterSerializer.new(@cmifu.character_magic_item.character) }, status: 202
  end

  def magic_destroy
    @cmi = CharacterMagicItem.find(params[:id])
    @cmi.destroy
    @character = Character.find(@cmi.character_id)
    render json: { character: CharacterSerializer.new(@character) }, status: 202
  end

  def weapon_destroy
    @cw = CharacterWeapon.find(params[:id])
    @cw.destroy
    @character = Character.find(@cw.character_id)
    render json: { character: CharacterSerializer.new(@character) }, status: 202
  end

  def shared_containers
    @cmi_containers = CharacterMagicItem.all.select do |cmi|
      cmi.magic_item.features.find { |f| f.feature_container}
    end
    render json: @cmi_containers
  end

  def store
    @container = Container.find(params[:id])
    if params[:cmi]
      @stored_cmi = StoredCharacterMagicItem.create!(character_magic_item_id: params[:cmi], container_id: @container.id)
      @cmi = CharacterMagicItem.find(params[:cmi])
      @cmi.update(equipped: false)
    end
    @character = Character.find(@stored_cmi.character_magic_item.character_id)
    render json: { character: CharacterSerializer.new(@character) }, status: 202
  end

  def withdraw
    if params[:cmi]
      @cmi = CharacterMagicItem.find(params[:id])
      @cmi.stored_character_magic_item.destroy
      @character = Character.find(@cmi.character_id)
    end
    render json: { character: CharacterSerializer.new(@character) }, status: 202
  end

  def container_contents
    contents = []
    @container = Container.find(params[:id])
    @container.stored_magic_items.each do |smi|
      contents.push(smi.character_magic_item)
    end

    render json: contents
  end


  def cmi_show
    @cmi = CharacterMagicItem.find(params[:id])
    render json: CharacterMagicItemSerializer.new(@cmi), status: 200
  end

  def feature_option
    @cmifuo = CharacterMagicItemFeatureUsageOption.find(params[:id])
    @fuo = @cmifuo.feature_usage_option

    @cmifuo.update(current_usage: @cmifuo.current_usage + @fuo.cost)

    @usage = @fuo.feature_usage
    @cmifu = CharacterMagicItemFeatureUsage.find_by(character_magic_item_id: @cmifuo.character_magic_item.id, feature_usage_id: @usage.id)
    amount = @cmifu.current_usage || 0
    @cmifu.update(current_usage: amount + @fuo.cost)
    if @cmifu.current_usage >= @usage.limit && @cmifu.character_magic_item.magic_item.expendable
      @cmifu.character_magic_item.destroy
    end

    @character = Character.find(@cmifu.character_magic_item.character.id)
    render json: { character: CharacterSerializer.new(@character) }, status: 200
  end

end
