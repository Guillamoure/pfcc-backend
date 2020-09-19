class Character < ApplicationRecord
  belongs_to :user
  belongs_to :race
  belongs_to :skillset

  belongs_to :campaign, optional: true
  has_many :allies, through: :campaign, source: :characters

  has_many :character_skillset_skills, dependent: :destroy
  has_many :character_klasses, dependent: :destroy
  has_many :klasses, through: :character_klasses
  has_many :klass_features, through: :klasses
  has_many :character_klass_specializations
  has_many :klass_specializations, through: :character_klass_specializations
  has_many :character_choices

  has_many :prepared_spells, dependent: :destroy
  has_many :character_known_spells, dependent: :destroy
  has_many :cast_spells, dependent: :destroy
  has_many :notes, dependent: :destroy

  has_many :character_magic_items, dependent: :destroy
  has_many :magic_items, through: :character_magic_items
  has_many :character_magic_item_feature_usages, through: :character_magic_items
  has_many :character_magic_item_feature_usage_options, through: :character_magic_items
  has_many :character_klass_feature_usages

  has_many :character_weapons, dependent: :destroy
  has_many :weapons, through: :character_weapons
  has_many :character_armors, dependent: :destroy
  has_many :armors, through: :character_armors



  validates :name, presence: true

  def applicable_klass_features

    self.class_obj.map do |cl_hash|
      klass = Klass.find(cl_hash[:klass_id])

      klass.klass_features.select { |kf| kf.feature_levels.map { |fl| fl.level}[0] <= cl_hash[:level] }

    end.flatten
  end

  def class_obj

    classes = []

    self.character_klasses.each do |ck|
      selected_klass = classes.find { |cl| cl[:klass_id] == ck.klass_id }

      if selected_klass == nil
        classes.push({klass_id: ck.klass_id, level: 1})
      else
        selected_klass[:level] = selected_klass[:level] + 1
      end

    end

    classes.each_with_index do |cl, i|
      klass = Klass.find(cl[:klass_id])
      # spd = klass.spells_per_days
      # selected_spd = spd.select {|s| s.klass_level == cl[:level]}
      # classes[i][:spellsPerDay] = []
      # selected_spd.each do |s|
        # classes[i][:spellsPerDay].push({spellLevel: s[:spell_level], spd: s[:spells]})
      # end
    end

    classes
  end

  def uniq_klasses
    self.klasses.uniq
  end

end
