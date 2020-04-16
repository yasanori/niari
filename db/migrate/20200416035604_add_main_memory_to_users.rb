class AddMainMemoryToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :main_photo, foreign_key: { to_table: :memories }
  end
end
