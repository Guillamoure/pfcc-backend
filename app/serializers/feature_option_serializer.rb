class FeatureOptionSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :level_available, :feature_option_actions

  def feature_option_actions
    self.object.feature_option_actions.map do |foa|
      option = {action: foa.action, level: foa.level, id: foa.id, feature_option_id: foa.feature_option_id}
    end
  end

end
