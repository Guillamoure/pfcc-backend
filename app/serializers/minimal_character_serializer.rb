class MinimalCharacterSerializer < ActiveModel::Serializer
  attributes :id, :name, :race, :user_id, :uniq_klasses, :character_klasses,  :campaign

  belongs_to :race
  belongs_to :campaign

  def uniq_klasses
    self.object.object.klasses.uniq.map do |kl|
      KlassSerializer.new(kl)
    end
  end

  def character_klasses
    self.object.character_klasses.map do |ck|
      CharacterKlassSerializer.new(ck)
    end
  end

end
