class CreateMemories < ActiveRecord::Migration[5.2]
  def change
    create_table :memories do |t|
      t.string :photo, null: false
      t.timestamps
    end
  end
end
