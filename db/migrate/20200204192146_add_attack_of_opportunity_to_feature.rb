class AddAttackOfOpportunityToFeature < ActiveRecord::Migration[5.2]
  def change
    add_column :features, :attack_of_opportunity, :boolean, default: false
  end
end
