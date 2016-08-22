class AddRanksToLeaderboards < ActiveRecord::Migration
  def change
    add_column :leaderboards, :rank, :integer
  end
end
