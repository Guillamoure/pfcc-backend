class KlassSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :hit_die, :skill_ranks, :fortitude, :reflex, :will, :img_url, :klass_features, :class_skillset_skills, :skills, :spells_per_days, :favored_klass_bonuses, :prepared_amounts

  has_many :klass_features
  has_many :class_skillset_skills
  has_many :skills, through: :class_skillset_skills

end
