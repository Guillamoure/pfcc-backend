class MagicItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :slot, :aura, :caster_level, :price_in_gp, :weight, :activatable, :expendable, :group, :features

  def features
    self.object.features.map do |mi|
      FeatureSerializer.new(mi)
    end
  end

end
