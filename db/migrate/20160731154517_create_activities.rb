class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.text :player
      t.string :level

      t.timestamps null: false
    end
  end
end
