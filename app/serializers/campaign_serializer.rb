class CampaignSerializer < ActiveModel::Serializer
  attributes :id, :name, :weekday,  :month, :day, :age, :year, :characters

  def characters
    self.object.characters.map do |ch|
      CharacterCampaignSerializer.new(ch)
    end
  end

end
