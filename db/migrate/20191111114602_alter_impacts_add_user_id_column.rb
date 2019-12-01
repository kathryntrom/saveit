class AlterImpactsAddUserIdColumn < ActiveRecord::Migration[5.2]
  def change
  	add_column :impacts, :user_id, :integer
  	add_index :impacts, :user_id
  end
end
