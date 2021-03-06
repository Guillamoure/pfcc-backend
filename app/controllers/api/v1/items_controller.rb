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
    Weapon.all.each do |weapon|
      applicable = false
      if weapon.name.include?(term)
        applicable = true
      end
      if weapon.name.include?(cap)
        applicable = true
      end
      if applicable
        items.push(weapon)
      end
    end
    Armor.all.each do |arm|
      applicable = false
      if arm.name.include?(term)
        applicable = true
      end
      if arm.name.include?(cap)
        applicable = true
      end
      if applicable
        items.push(arm)
      end
    end
    Item.all.each do |item|
      applicable = false
      if item.name.include?(term)
        applicable = true
      end
      if item.name.include?(cap)
        applicable = true
      end
      if applicable
        items.push(item)
      end
    end
    Poison.all.each do |poison|
      applicable = false
      if poison.name.include?(term)
        applicable = true
      end
      if poison.name.include?(cap)
        applicable = true
      end
      if applicable
        items.push(poison)
      end
    end
    render json: items
  end

  def weapon_index
    weapons = []
    Weapon.all.each do |weapon|
      weapons.push(WeaponSerializer.new(weapon))
    end
    render json: weapons, root: "Weapon"
  end


  def create
    @character_item = nil
    id = params[:item][:id]
    if params[:item_type] == "weapon"
      @weapon = Weapon.find(id)
    elsif params[:item_type] == "armor"
      @armor = Armor.find(id)
    elsif params [:item_type] == "magic_item"
      @magic_item = MagicItem.find(id)
    elsif params [:item_type] == "item"
      @item = Item.find(id)
    elsif params [:item_type] == "poison"
      @poison = Poison.find(id)
    end

    if @weapon
      @character_item = CharacterWeapon.create!(character_id: params[:character_id], weapon_id: @weapon.id, known: true, description: params[:desc], name: params[:name], description: params[:description], ammunition_amount: params[:ammunition_amount], discovered: true)
    end

    if @armor
      @character_item = CharacterArmor.create!(character_id: params[:character_id], armor_id: @armor.id, known: true, description: params[:desc], name: '', discovered: true)
    end

    if @item
      @character_item = CharacterItem.create!(character_id: params[:character_id], item_id: @item.id, discovered: true)
    end

    if @poison
      @character_item = CharacterPoison.create!(character_id: params[:character_id], poison_id: @poison.id)
    end

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

  def weapon_create
    @character_weapon = CharacterWeapon.create!(character_id: params[:character_id], weapon_id: params[:item_id], known: params[:known], description: params[:description], name: params[:name], discovered: params[:discovered], ammunition_amount: params[:ammunition_amount])

    render json: @character_weapon, status: 201
  end

  def armor_create
    @character_armor = CharacterArmor.create!(character_id: params[:character_id], armor_id: params[:item_id], known: params[:known], description: params[:description], name: params[:name], discovered: params[:discovered])

    render json: @character_armor, status: 201
  end

  def item_create
    @character_item = CharacterItem.create!(character_id: params[:character_id], item_id: params[:item_id], discovered: params[:discovered])

    render json: @character_item.item, status: 201
  end

  def poison_create
    @character_poison = CharacterPoison.create!(character_id: params[:character_id], poison_id: params[:item_id])

    render json: @character_poison.poison, status: 201
  end

  def magic_item_create
    @character_magic_item = CharacterMagicItem.create!(character_id: params[:character_id], magic_item_id: params[:item_id], discovered: params[:discovered], known: params[:known], false_desc: params[:false_desc])

    render json: @character_magic_item, status: 201
  end

  def potion_create
    @character_potion = CharacterPotion.create!(character_id: params[:character_id], spell_id: params[:spell_id], discovered: params[:discovered], known: params[:known], caster_level: params[:caster_level], potion_or_oil: params[:potion_or_oil])

    render json: @character_potion, status: 201
  end

  def scroll_create
    @character_scroll = CharacterScroll.create!(character_id: params[:character_id], spell_id: params[:spell_id], discovered: params[:discovered], known: params[:known], spell_level: params[:spell_level], scroll_type: params[:scroll_type])

    render json: @character_scroll, status: 201
  end

  def wand_create
    @character_wand = CharacterWand.create!(character_id: params[:character_id], spell_id: params[:spell_id], discovered: params[:discovered], known: params[:known], caster_level: params[:caster_level], charges: params[:charges], name: params[:name], description: params[:description])

    render json: @character_wand, status: 201
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

  def a_discovered
    @character_item = CharacterArmor.find(params[:id])
    @character_item.update(discovered: true)
    render json: { message: "Updated CharacterArmor with id of #{@character_item.id} by changing the discovered attribute to true"}, status: 200
  end

  def p_discovered
    @character_item = CharacterPotion.find(params[:id])
    @character_item.update(discovered: true)
    render json: { message: "Updated CharacterPotion with id of #{@character_item.id} by changing the discovered attribute to true" }, status: 202
  end

  def s_discovered
    @character_item = CharacterScroll.find(params[:id])
    @character_item.update(discovered: true)
    render json: { message: "Updated CharacterScroll with id of #{@character_item.id} by changing the discovered attribute to true" }, status: 202
  end

  def wand_discovered
    @character_item = CharacterWand.find(params[:id])
    @character_item.update(discovered: true)
    render json: { message: "Updated CharacterWand with id of #{@character_item.id} by changing the discovered attribute to true" }, status: 202
  end

  def mi_equip
    @character_item = CharacterMagicItem.find(params[:id])
    @character_item.update(equipped: !@character_item.equipped)
    # REFACTOR; THE FRONT END DOESN'T NEED ANY DATA, JUST A STATUS CODE
    render json: { character: CharacterSerializer.new(@character_item.character) }, status: 202
  end

  def w_equip
    @character_item = CharacterWeapon.find(params[:id])
    @character_item.character.character_weapons.each do |cw|
      if !(params[:equipped] == "Primary" && cw.equipped === "Off") && !(params[:equipped]== "Off" && cw.equipped == "Primary")
        cw.update(equipped: "")
      end
    end

    @character_item.update(equipped: params[:equipped])
    # REFACTOR; THE FRONT END DOESN'T NEED ANY DATA, JUST A STATUS CODE
    render json: { character: CharacterSerializer.new(@character_item.character) }, status: 202
  end

  def a_equip
    @character_item = CharacterArmor.find(params[:id])
    @character_item.character.character_armors.each do |ca|
      if ca.equipped
        ca.update(equipped: false)
      end
    end

    @character_item.update(equipped: params[:equipped])
    render json: { message: "Updated CharacterArmor with id of #{@character_item.id} by changing the equipped attribute to #{params[:equipped]}"}, status: 200
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

  def w_ammo
    @character_item = CharacterWeapon.find(params[:id])

    if params[:ammo_id] == 0
      @character_item.update(character_weapon_ammunition_id: params[:ammo_id], magazine: 0, improvised_ammunition: true)
    else
      @character_item.update(character_weapon_ammunition_id: params[:ammo_id], magazine: 0, improvised_ammunition: false)
    end

    render json: { message: "Updated CharacterWeapon with id of #{@character_item.id} by changing the character_weapon_ammunition_id to #{params[:ammo_id]}"}, status: 200
  end

  def w_update_ammo
    @character_item = CharacterWeapon.find(params[:id])

    @character_item.update(magazine: params[:magazine])

    if params[:ammunition_amount] && !@character_item.improvised_ammunition
      @ammo = CharacterWeapon.find(@character_item.character_weapon_ammunition_id)
      @ammo.update(ammunition_amount: params[:ammunition_amount])
    end

    render json: { message: "Updated CharacterWeapon with id of #{@character_item.id} by changing the magazine amount to #{params[:magazine]}"}, status: 200
  end

  def known
    if params[:item_type] == "magic_item"
      @character_item = CharacterMagicItem.find(params[:id])
    elsif params[:item_type] == "potion"
      @character_item = CharacterPotion.find(params[:id])
    elsif params[:item_type] == "scroll"
      @character_item = CharacterScroll.find(params[:id])
    elsif params[:item_type] == "wand"
      @character_item = CharacterWand.find(params[:id])
    end
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
