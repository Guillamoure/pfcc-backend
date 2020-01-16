class CampaignSerializer < ActiveModel::Serializer
  attributes :id, :name, :date, :characters

  def characters
    self.object.characters.map do |ch|
      CharacterCampaignSerializer.new(ch)
    end
  end

end
