class CreatePlanets < ActiveRecord::Migration[5.2]
  def change
    create_table :planets do |t|
      t.string :name
      t.integer :size
      t.boolean :life
      t.integer :system_id
      t.integer :galaxy_id
      t.integer :user_id

      t.timestamps
    end
  end
end
