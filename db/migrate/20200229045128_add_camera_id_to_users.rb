class AddCameraIdToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :camera_id, :integer, default: "2"
  end
end
