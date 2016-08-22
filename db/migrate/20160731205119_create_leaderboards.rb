class CreateLeaderboards < ActiveRecord::Migration
  def change
    create_table :leaderboards do |t|
      t.text :name
      t.string :level
      t.integer :score

      t.timestamps null: false
    end
  end
end
