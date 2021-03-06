class CampaignSerializer < ActiveModel::Serializer
  attributes :id, :name, :starting_weekday, :starting_month, :starting_day, :starting_age, :starting_year, :current_weekday, :current_month, :current_day, :current_age, :current_year, :characters, :calendar, :theme, :setting, :starting_level, :skillset, :custom_notes, :races, :klasses, :websocket_code, :encounters

  def characters
    self.object.characters.map do |ch|
      CharacterCampaignSerializer.new(ch)
    end
  end

  def encounters
    self.object.encounters.map do |e|
      EncounterSerializer.new(e)
    end
  end

end
