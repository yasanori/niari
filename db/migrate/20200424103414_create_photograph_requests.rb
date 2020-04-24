class CreatePhotographRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :photograph_requests do |t|
      t.references :work
      t.references :requester
      t.text :text
      t.integer :approval, null: false
      t.timestamps
    end
    add_foreign_key :photograph_requests, :photograph_works, column: :work_id
    add_foreign_key :photograph_requests, :users, column: :requester_id
  end
end
