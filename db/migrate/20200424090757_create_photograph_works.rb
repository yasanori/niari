class CreatePhotographWorks < ActiveRecord::Migration[5.2]
  def change
    create_table :photograph_works do |t|

      t.timestamps
    end
  end
end
