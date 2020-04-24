class CreatePhotographWorks < ActiveRecord::Migration[5.2]
  def change
    create_table :photograph_works do |t|
      t.references :photographer
      t.references :requester
      t.date :date, null: false
      t.references :prefecture
      t.text :text, null: false
      t.integer :progress, default: 1
      t.timestamps
    end
    add_foreign_key :photograph_works, :users, column: :photographer_id
    add_foreign_key :photograph_works, :users, column: :requester_id
    add_foreign_key :photograph_works, :prefectures, column: :prefecture_id
  end
end
