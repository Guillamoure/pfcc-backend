class CharacterSerializer < ActiveModel::Serializer
  attributes :id, :name, :alignment, :deity, :homeland, :gender, :age, :height, :weight, :hair, :eyes, :user_id, :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :description, :background, :any_bonus, :character_skillset_skills, :lethal_damage, :non_lethal_damage, :temp_hp, :uniq_klasses, :character_klasses, :full_name, :character_magic_items, :character_magic_item_feature_usages, :allies, :campaign, :character_magic_item_feature_usage_options, :notes

  belongs_to :user
  # has_many :character_klasses
  # has_many :klasses, through: :character_klasses
  # has_many :klass_features, through: :klasses
  belongs_to :race
  belongs_to :skillset
  # has_many :character_skillset_skills
  has_many :cast_spells
  has_many :known_spells
  has_many :prepared_spells

  def uniq_klasses
    self.object.klasses.uniq.map do |kl|
      KlassSerializer.new(kl)
    end
  end

  def character_klasses
    self.object.character_klasses.map do |ck|
      print "hey"
      CharacterKlassSerializer.new(ck)
    end
  end

  def character_magic_items
    self.object.character_magic_items.map do |mi|
      CharacterMagicItemSerializer.new(mi)
    end
  end
end
