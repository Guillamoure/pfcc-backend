class CampaignSerializer < ActiveModel::Serializer
  attributes :id, :name, :starting_weekday, :starting_month, :starting_day, :starting_age, :starting_year, :characters, :calendar, :theme, :setting, :starting_level, :skillset, :custom_notes, :races, :klasses

  # def characters
  #   self.object.characters.map do |ch|
  #     CharacterCampaignSerializer.new(ch)
  #   end
  # end

end
