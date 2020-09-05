class CharacterSerializer < ActiveModel::Serializer
  # attributes :id, :name, :alignment, :deity, :homeland, :gender, :age, :height, :weight, :hair, :eyes, :user_id, :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :description, :background, :any_bonus, :character_skillset_skills, :lethal_damage, :non_lethal_damage, :temp_hp, :uniq_klasses, :character_klasses, :full_name, :character_magic_items, :character_magic_item_feature_usages, :allies, :campaign, :character_magic_item_feature_usage_options, :notes, :is_done_preparing_spells, :max_hp, :applicable_klass_features, :class_obj
  #
  attributes :id, :name, :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :alignment, :deity, :homeland, :gender, :age, :height, :weight, :hair, :eyes, :description, :background, :any_bonus, :lethal_damage, :non_lethal_damage, :temp_hp, :full_name, :is_done_preparing_spells, :max_hp, :uniq_klasses, :character_skillset_skills, :character_klasses, :character_magic_items, :character_magic_item_feature_usages, :notes, :applicable_klass_features, :class_obj, :skillset, :character_klass_feature_usages, :character_known_spells, :klass_specializations

  belongs_to :user
  # # has_many :character_klasses
  # # has_many :klasses, through: :character_klasses
  # # has_many :klass_features, through: :klasses
  belongs_to :race
  # belongs_to :skillset
  # # has_many :character_skillset_skills
  # has_many :cast_spells
  has_many :character_known_spells
  # has_many :prepared_spells
  belongs_to :campaign
  #
  has_many :character_weapons
  has_many :character_armors
  has_many :klass_specializations
  #
  def uniq_klasses
    self.object.klasses.uniq.map do |kl|
      KlassSerializer.new(kl)
    end
  end
  #
  def character_klasses
    self.object.character_klasses.map do |ck|
      CharacterKlassSerializer.new(ck)
    end
  end
  #
  def character_magic_items
    self.object.character_magic_items.map do |mi|
      CharacterMagicItemSerializer.new(mi)
    end
  end
  #
  def skillset
    SkillsetSerializer.new(self.object.skillset)
  end
  def applicable_klass_features
    self.object.applicable_klass_features.map do |akf|
      KlassFeatureSerializer.new(akf)
    end
  end
end
