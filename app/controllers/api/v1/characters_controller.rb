class Api::V1::CharactersController < ApplicationController

  def index
    @user = User.find(request.headers['User'])
    characters = []
    @user.characters.each do |ch|
      characters << MinimalCharacterSerializer.new(ch)
    end
    render json: characters
  end

  def show
    @character = Character.includes(
      {
        race: [
          :racial_traits, :race_ability_score_modifiers, :favored_klass_bonuses, :source
        ],
        user: [
          :characters
        ],
        klasses: [
          {klass_features: [
            :feature_levels, :actions, :features
          ]},
          :class_skillset_skills, :skills, :favored_klass_bonuses
        ],
        character_magic_items: [
          {magic_item: [
            features: [
              :action, {usage: :options}, :feature_container, :loading, :weapon_proficiencies, :languages, :movements, :stat_bonuses, :stat_notes, :skill_bonuses, :skill_notes, :spells, :feature_usage_spell_options
            ]
          ]},
          :character_magic_item_feature_usages, :stored_character_magic_item, :container, :character_magic_item_feature_usage_options
        ],
        campaign: [
          :races, :skillset, :klasses, :characters, :calendar
        ],
        skillset: [:skills],
        character_weapons: [
          weapon: [:weapon_qualities, :weapon_groups, :source, :weapon_hands, {
            features: [
              :action, {usage: :options}, :feature_container, :loading, :weapon_proficiencies, :languages, :movements, :stat_bonuses, :stat_notes, :skill_bonuses, :skill_notes, :spells, :feature_usage_spell_options
            ]
          }]
        ],
        character_armors: [:armor],
        character_known_spells: [
          :spell_list_spell, {spell: [
            :subschools, {spell_components: [:component]}, :magic_school, :spell_range, :action
          ]}
        ],
        prepared_spells: {spell: [
          :subschools, {spell_components: [:component]}, :magic_school, :spell_range, :action
        ]}
      },
      :character_klasses, :character_skillset_skills, :character_magic_item_feature_usages, :notes, :campaign, :character_klass_feature_usages, :klass_specializations, :cast_spells
    ).find(params[:id])

    if (!@character.character_weapons.find {|cw| cw.weapon.name == "Unarmed"})
      unarmed = Weapon.find_by(name: "Unarmed")
      CharacterWeapon.create!(character_id: @character.id, weapon_id: unarmed.id, discovered: true, known: true, name: "", description: "")
    end

    puts "\n\n\n"
    puts "SERIALIZER"
    puts "\n\n\n"
    # render json: { character: character_serializer(@character) }
    render json: { character: CharacterSerializer.new(@character) }, status: 200
  end

  def create
    @character = Character.create(name: params[:character][:name], description: params[:character][:description], user_id: params[:user_id], strength: params[:character][:strength], dexterity: params[:character][:dexterity], constitution: params[:character][:constitution], intelligence: params[:character][:intelligence], wisdom: params[:character][:wisdom], charisma: params[:character][:charisma], race_id: params[:character][:race], any_bonus: params[:character][:anyBonus], alignment: params[:character][:alignment], age: params[:character][:age], gender: params[:character][:gender], hair: params[:character][:hair], eyes: params[:character][:eyes], height: params[:character][:height], weight: params[:character][:weight], background: params[:character][:background], homeland: params[:character][:homeland], deity: params[:character][:deity], skillset_id: params[:character][:activeSkillset])
    if @character.valid?
      render json: { character: CharacterSerializer.new(@character) }, status: 201
    else
      render json: { error: "Could not create" }, status: 400
    end
  end

  def new_show
    @character = Character.find(params[:id])
    render json: NewCharacterSerializer.new(@character)
  end

  private

  def character_serializer(character)

    cs = character.serializable_hash(:include => {
        :race => {:only => [:id, :name, :speed, :size], :include => {
          :racial_traits => {:only => [:id, :name, :description]},
          :race_ability_score_modifiers => {:only => [:ability_score, :bonus]}
          }},
        :user => {:only => [:id, :username, :admin]},
        :character_klasses => {include: {
          :feature_options => {:except => []}
        },
          :except => [:created_at, :updated_at, :id]
        },
        :uniq_klasses => {:include => {
          :skills => {:only => [:id, :name, :ability_score]},
          :class_skillset_skills => {:except => [:id, :klass_id]},
          :spells_per_days => {:except => [:id, :klass_id]},
          :prepared_amounts => {:except => []}
        },
          :except => [:description, :created_at, :updated_at, :img_url, :source_id]
        },
        :character_skillset_skills => {:except => []},
        :skillset => {:include => {
          :skills => {}
        }},
      }, :except => [:race_id, :created_at, :updated_at])

    cs[:class_obj] = character.class_obj
    cs[:applicable_klass_features] = character.applicable_klass_features

    return cs
  end

  def features_traits_serializer(character)

  end

  def equipment_serializer(character)

    cs = character.serializable_hash(:include => {
      :character_magic_items => {:include => {
        :magic_item => {:include => {
          :features => {:include => {
            :stat_bonuses => {},
            :skill_bonuses => {},
            :usage => {},
            :feature_usage_spell_options => {},
            :spells => {},
            :feature_container => {},
            :skill_notes => {},
            :movements => {},
            :languages => {},
            :loading => {},
            :weapon_proficiencies => {}
          }}
        }},
        :character_magic_item_feature_usages => {},
        :stored_character_magic_item => {},
        :container => {},
        :character_magic_item_feature_usage_options => {}
      },
        :except => [:character_id, :magic_item_id]
      },
      :character_magic_item_feature_usages => {},
      :character_magic_item_feature_usage_options => {},
    }, :except => [])
    # magic Items
    # armors
    # weapons
  end

  def spells_serializer(character)

    cs = character.serializable_hash(:include => {
      :allies => {},
      :campaign => {},
      :notes => {},
    }, :except => [])
    # known spells
    # spells prepared
  end

  def meta_serializer(character)
    # allies
    # campaign
    # notes
  end

end
