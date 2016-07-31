class ChangeColumnName < ActiveRecord::Migration
  def change
	rename_column :activities, :player, :name
  end
end
