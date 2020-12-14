class FeatSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :blurb, :benefit, :special, :normal, :feat_types, :source, :features, :prerequisite

  def features
    self.object.features.map do |f|
      FeatureSerializer.new(f)
    end
  end
end
