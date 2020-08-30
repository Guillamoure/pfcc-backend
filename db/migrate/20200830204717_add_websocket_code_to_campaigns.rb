class AddWebsocketCodeToCampaigns < ActiveRecord::Migration[5.2]
  def change
    add_column :campaigns, :websocket_code, :string
  end
end
