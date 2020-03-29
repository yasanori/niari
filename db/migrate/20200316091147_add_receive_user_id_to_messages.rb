class AddReceiveUserIdToMessages < ActiveRecord::Migration[5.2]
  def change
    add_column :messages, :receive_user_id, :integer
  end
end
