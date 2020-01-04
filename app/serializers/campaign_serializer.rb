class CampaignSerializer < ActiveModel::Serializer
  attributes :id, :name, :date, :characters

  def characters
    self.object.characters.map do |ck|
      ck
    end
  end

end
