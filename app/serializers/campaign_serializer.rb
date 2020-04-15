class CampaignSerializer < ActiveModel::Serializer
  attributes :id, :name, :weekday,  :month, :day, :age, :year, :characters, :calendar, :theme, :setting, :starting_level, :skillset, :custom_notes, :races, :klasses

  def characters
    self.object.characters.map do |ch|
      CharacterCampaignSerializer.new(ch)
    end
  end

end
